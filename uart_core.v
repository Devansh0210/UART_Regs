`timescale 1s/100ms

module uart_core #(
    parameter OVERSAMPLE = 4
)(

    input wire clk,
    input wire rst_n,

    input wire rx,
    output reg tx,
    input wire [9:0] div_int,
    input wire [3:0] div_frac,

    input wire [7:0] tx_byte,
    output [7:0] rx_byte,
    input wire tx_valid,
    output wire rx_valid,
    output wire tx_done,
    input wire rxfifo_ren_ext,
    output wire rx_irq


);

wire rst_n_sync;

reset_sync #(
    .N_CYCLES (2)
) inst_reset_sync (
    .clk(clk),
    .rst_n_in(rst_n),
    .rst_n_out(rst_n_sync)
);

wire rx_sync;

sync_1bit inst_sync_rx(
    .clk(clk),
    .rst_n(rst_n_sync),
    .i(rx),
    .o(rx_sync)
);

localparam W_OVER = $clog2(OVERSAMPLE);

reg [W_OVER-1:0] tx_over_ctr;
reg [3:0] tx_state;
reg [7:0] tx_shifter;

localparam TX_IDLE = 0;
localparam TX_START = 1;
localparam TX_STOP = 10;

wire clk_en;

clkdiv_frac #(
    .W_DIV_FRAC(4),
    .W_DIV_INT(10)
) inst_clk_div (
    .clk(clk),
    .rst_n(rst_n_sync),
    .en(1'b1),
    .div_frac(div_frac),
    .div_int(div_int),
    .clk_en(clk_en)
);

wire tx_fifo_wen = tx_valid;
wire [7:0] tx_fifo_wdata = tx_byte;
wire tx_fifo_ren = ((!tx_fifo_empty) && clk_en && (tx_state == TX_IDLE || tx_state == TX_STOP)
                    && (!tx_over_ctr));
wire [7:0] tx_fifo_rdata;
wire [2:0] tx_fifo_lvl;
wire tx_fifo_full;
wire tx_fifo_empty;



sync_fifo #(
    .WIDTH (8),
    .DEPTH (5)
) inst_tx_fifo (
    .clk(clk),
    .rst_n(rst_n_sync),
    .w_en(tx_fifo_wen),
    .w_data(tx_fifo_wdata),
    .r_en(tx_fifo_ren),
    .r_data(tx_fifo_rdata),
    .full(tx_fifo_full),
    .empty(tx_fifo_empty),
    .level(tx_fifo_lvl)
);



wire tx_busy = (tx_state != TX_IDLE);
assign tx_done = (tx_state == TX_STOP - 1);


always @(posedge clk or negedge rst_n_sync) begin

    if(!rst_n_sync) begin
        tx <= 1'b1;
        tx_over_ctr <= {W_OVER{1'b0}};
        tx_state <= TX_IDLE;
        tx_shifter <= 8'h0;
        // tx_done <= 1'b0;
    end else begin
        if(clk_en)
            tx_over_ctr <= tx_over_ctr + 1'b1;
        if(clk_en && !tx_over_ctr) begin
            tx_state <= tx_state + 1'b1;

            case(tx_state)

            TX_IDLE: begin
                if(!tx_fifo_empty) begin
                    tx_shifter <= tx_fifo_rdata;
                    tx <= 1'b0;
                end
                else begin
                    tx_over_ctr <= 8'b0;
                    tx_state <= TX_IDLE;
                end
            end

            TX_START: begin
                tx_shifter <= tx_shifter >> 1;
                tx <= tx_shifter[0];
            end

            TX_STOP: begin
                if(!tx_fifo_empty) begin
                    tx_shifter <= tx_fifo_rdata;
                    tx <= 1'b0;
                    tx_state <= TX_START;
                end else begin
                    tx_state <= TX_IDLE;
                    tx_over_ctr <= {W_OVER{1'b0}};
                end
            end

            default: begin
                tx_shifter <= tx_shifter >> 1;
                if(tx_state == TX_STOP - 1) begin
                    tx <= 1;
                end else begin
                    tx <= tx_shifter[0];
                end
            end

            endcase
        end
    end


end


reg [W_OVER-1:0] rx_over_ctr;
reg [3:0] rx_state;
reg [7:0] rx_shifter;
reg rxfifo_wen;


wire din = rx_sync;
assign rx_valid = (rx_state == (RX_STOP));

wire rx_fifo_full;
wire [2:0] rx_fifo_lvl;
wire rx_fifo_empty;

localparam RX_IDLE = 0;
localparam RX_START = 1;
localparam RX_STOP = 10;

sync_fifo #(
    .WIDTH (8),
    .DEPTH (5)
) inst_rx_fifo (
    .clk(clk),
    .rst_n(rst_n_sync),
    .w_en(rxfifo_wen),
    .w_data(rx_shifter),
    .r_en(rxfifo_ren_ext),
    .r_data(rx_byte),
    .full(rx_fifo_full),
    .empty(rx_fifo_empty),
    .level(rx_fifo_lvl)
);

assign rx_irq = !rx_fifo_empty;

always @(posedge clk or negedge rst_n_sync) begin

    if(!rst_n_sync) begin
        rx_over_ctr <= {W_OVER{1'b0}};
        rx_state <= RX_IDLE;
        rx_shifter <= 8'h0;
        rxfifo_wen <= 1'b0;
    end else begin
        rxfifo_wen <= 1'b0;
        if(clk_en)
            rx_over_ctr <= rx_over_ctr + 1'b1;

        if(clk_en && !rx_over_ctr) begin
            rx_state <= rx_state + 1'b1;

            case(rx_state)
                RX_IDLE: begin
                    if(din) begin
                        rx_state <= RX_IDLE;
                        rx_over_ctr <= {W_OVER{1'b0}};
                    end
                end

                RX_START: begin
                    rx_over_ctr <= OVERSAMPLE / 2;
                end

                RX_STOP: begin
                    rxfifo_wen <= din;

                    rx_state <= RX_IDLE;
                    rx_over_ctr <= 0;
                end

                default: begin
                    rx_shifter <= (rx_shifter >> 1) | (din << 7);
                end
            endcase
        end
    end

end


// `ifdef COCOTB_SIM
// initial begin
//   $dumpfile ("uart_test.vcd");
//   $dumpvars (0, uart_core);
//   #1;
// end
// `endif

endmodule


module reset_sync #(
    parameter N_CYCLES = 2 // must be >= 2
) (
    input  wire clk,
    input  wire rst_n_in,
    output wire rst_n_out
);

(* keep = 1'b1 *) reg [N_CYCLES-1:0] delay;

always @ (posedge clk or negedge rst_n_in)
    if (!rst_n_in)
        delay <= {N_CYCLES{1'b0}};
    else
        delay <= {delay[N_CYCLES-2:0], 1'b1};

assign rst_n_out = delay[N_CYCLES-1];

endmodule

module sync_1bit #(
    parameter N_STAGES = 2 // Should be >=2
) (
    input wire clk,
    input wire rst_n,
    input wire i,
    output wire o
);

(* keep = 1'b1 *) reg [N_STAGES-1:0] sync_flops;

always @ (posedge clk or negedge rst_n)
    if (!rst_n)
        sync_flops <= {N_STAGES{1'b1}};
    else
        sync_flops <= {sync_flops[N_STAGES-2:0], i};

assign o = sync_flops[N_STAGES-1];

endmodule

module clkdiv_frac #(
    parameter W_DIV_INT = 16,
    parameter W_DIV_FRAC = 8
) (
    input wire                  clk,
    input wire                  rst_n,

    input wire                  en,
    input wire [W_DIV_INT-1:0]  div_int,
    input wire [W_DIV_FRAC-1:0] div_frac,

    output reg                  clk_en
);

reg [W_DIV_INT-1:0]  ctr_int;
reg [W_DIV_FRAC-1:0] ctr_frac;
reg                  frac_carry;

always @ (posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        clk_en <= 1'b0;
        ctr_int <= {W_DIV_INT{1'b0}} | 1'b1;
        ctr_frac <= {W_DIV_FRAC{1'b0}};
        frac_carry <= 1'b0;
    end else if (!en) begin
        // Keep everything clear so that we raise
        // clk_en on the cycle immediately following being enabled
        clk_en <= 1'b0;
        ctr_int <= {W_DIV_INT{1'b0}} | 1'b1;
        ctr_frac <= {W_DIV_FRAC{1'b0}};
        frac_carry <= 1'b0;
    end else begin
        if (ctr_int == 1) begin
            {frac_carry, ctr_frac} <= ctr_frac + div_frac;
            ctr_int <= div_int + frac_carry;
            clk_en <= 1'b1;
        end else begin
            clk_en <= 1'b0;
            ctr_int <= ctr_int - 1'b1;
        end
    end
end

endmodule


module sync_fifo #(
    parameter DEPTH   = 2,
    parameter WIDTH   = 32,
    parameter W_LEVEL = $clog2(DEPTH + 1)
) (
    input wire clk,
    input wire rst_n,

    input  wire [WIDTH-1:0] w_data,
    input  wire             w_en,
    output wire [WIDTH-1:0] r_data,
    input  wire             r_en,

    output wire               full,
    output wire               empty,
    output reg  [W_LEVEL-1:0] level
);

  // valid has an extra bit which should remain constant 0, and mem has an extra
  // entry which is wired through to w_data. This is just to handle the loop
  // boundary condition without tools complaining.
    reg [WIDTH-1:0] mem[0:DEPTH];
    reg [DEPTH:0] valid;

  // ----------------------------------------------------------------------------
  // Control and datapath

    wire push = w_en && !full;
    wire pop = r_en && !empty;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            valid <= {DEPTH + 1{1'b0}};
        end else if (w_en || r_en) begin
      // 2 LUTs 1 FF per flag, all FFs have same clke
            valid <= (valid << push | {{DEPTH - 1{1'b0}}, push}) >> pop;
        end
    end

  // No reset on datapath
  always @(posedge clk) begin : shift_data
    integer i;
    for (i = 0; i < DEPTH; i = i + 1) begin : data_stage
      if (r_en || (w_en && !valid[i] && (i == DEPTH - 1 || !valid[i+1]))) begin
        mem[i] <= valid[i+1] ? mem[i+1] : w_data;
      end
    end
  end

  always @(*) mem[DEPTH] = w_data;
  assign r_data = mem[0];

  // ----------------------------------------------------------------------------
  // Flags

  assign full   = valid[DEPTH-1];
  assign empty  = !valid[0];

  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      level <= {W_LEVEL{1'b0}};
    end else begin
      level <= level + push - pop;
    end
  end

  // ----------------------------------------------------------------------------
  // Testbench junk vvv

  //synthesis translate_off
  always @(posedge clk) if (w_en && full) $display($time, ": WARNING %m: push on full");
  always @(posedge clk) if (r_en && empty) $display($time, ": WARNING %m: pop on empty");
  //synthesis translate_on


endmodule
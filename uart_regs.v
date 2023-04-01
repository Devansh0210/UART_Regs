`include "uart_core.v"

module uart_regs #(

    parameter W_REG = 32

)(
    input wire clk,
    input wire rst_n,

    input wire rx,
    output wire tx,
    input wire [9:0] div_int,
    input wire [3:0] div_frac,

    output wire [W_REG-1:0] Reg1,
    output wire [W_REG-1:0] Reg2,
    output wire [W_REG-1:0] Reg3,
    output wire [W_REG-1:0] Reg4,
    output wire [W_REG-1:0] Reg5,
    output wire [W_REG-1:0] Reg6,
    output wire [W_REG-1:0] Reg7,
    output wire [W_REG-1:0] Reg8
);

localparam REG_ADDR = $clog2(8);

reg [W_REG-1:0] mem [0:7];

reg [REG_ADDR-1:0] addr;

reg [3:0] state;

wire rst_n_sync;

localparam IDLE = 0;
localparam READ_REG = 1;
localparam WRITE_REG = 2;
localparam TX_BYTE = 3;
localparam RX_BYTE = 4;
localparam WRITE_COMPLETE = 5;
localparam READ_COMPLETE  = 6;
localparam RESOLVE = 7;

wire rx_irq;
reg rx_ren;
wire rx_valid;
wire tx_done;
reg [7:0] tx_byte;
wire [7:0] rx_byte;
reg tx_valid;

wire read_reg = !(rx_byte[7:5] == 3'b101);

reg [2:0] cnt_byte;
reg [31:0] temp_wdata;



uart_core #(
    .OVERSAMPLE(4)
) inst_uart (
    .clk(clk),
    .rst_n(rst_n),
    .tx(tx),
    .rx(rx),
    .div_int(div_int),
    .div_frac(div_frac),
    .tx_byte(tx_byte),
    .rx_byte(rx_byte),
    .tx_valid(tx_valid),
    .rx_valid(rx_valid),
    .tx_done(tx_done),
    .rxfifo_ren_ext(rx_ren),
    .rx_irq(rx_irq)
);

reset_sync #(
    .N_CYCLES (2)
) inst_reset_sync (
    .clk(clk),
    .rst_n_in(rst_n),
    .rst_n_out(rst_n_sync)
);

always @(posedge clk or negedge rst_n_sync) begin

    if(!rst_n_sync) begin
        state <= IDLE;
        rx_ren <= 1'b0;
        tx_valid <= 1'b0;
        tx_byte <= 0;
        addr <= 0;
        // mem <= 0;
        cnt_byte <= 3'b0;
        temp_wdata <= 0;
    end else begin

        case(state)

            IDLE: begin
                tx_valid <= 1'b0;
                if(rx_irq) begin
                    rx_ren <= 1'b1;
                    addr <= rx_byte[2:0];
                    if(read_reg) begin
                        state <= READ_REG;
                    end
                    else begin
                        state <= WRITE_REG;
                        // rx_ren <= 1'b1;
                        temp_wdata <= 32'b0;
                    end
                end
                else begin
                    state <= IDLE;
                end
            end

            READ_REG: begin
                rx_ren <= 1'b0;
                cnt_byte <= cnt_byte + 1'b1;
                tx_valid <= 1'b1;
                case(cnt_byte)
                    0: tx_byte <= mem[cnt_byte][7:0];
                    1: tx_byte <= mem[cnt_byte][15:8];
                    2: tx_byte <= mem[cnt_byte][23:16];
                    3: tx_byte <= mem[cnt_byte][31:24];

                    default:
                        tx_byte <= tx_byte;
                endcase

                if(cnt_byte == 3'd3) begin
                    state <= IDLE;
                    // tx_valid <= 1'b0;
                    cnt_byte <= 3'd0;
                end
                else begin
                    state <= READ_REG;
                end
            end

            WRITE_REG: begin
                if(cnt_byte != 3'd5) begin
                    if(rx_irq) begin
                        rx_ren <= 1'b1;
                        cnt_byte <= cnt_byte + 1;
                        if(cnt_byte != 3'd0)
                            temp_wdata <= temp_wdata | (rx_byte << ((cnt_byte - 1) << 3));

                    end else begin
                        rx_ren <= 1'b1;
                    end
                    state <= WRITE_REG;
                end else begin
                    rx_ren <= 1'b0;
                    temp_wdata <= 0;
                    cnt_byte <= 0;
                    state <= IDLE;
                end
            end

            default: begin
            end

        endcase

    end


end


`ifdef COCOTB_SIM
initial begin
  $dumpfile ("uart_test.vcd");
  $dumpvars (0, uart_regs);
  #1;
end

initial begin
    integer i;
    for(i = 0; i < 8; i =i+1) begin
        mem[i] = 32'h12345678;
    end
end
`endif


endmodule

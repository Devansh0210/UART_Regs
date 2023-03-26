`include "uart_core.v"

module uart_regs #(

    parameter W_REG = 32

)(
    input wire clk,
    input wire rst_n,

    input wire rx,
    input wire tx,
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

uart_core #(
    .OVERSAMPLE(4)
) inst_uart (
    .clk(clk),
    .rst_n(rst_n),
    .tx(tx),
    .rx(rx),
    .div_int(div_int),
    .div_frac(div_frac),
    .tx_byte(),
    .rx_byte(),
    .tx_valid(),
    .rx_valid(),
    .tx_done()
);

reset_sync #(
    .N_CYCLES (2)
) inst_reset_sync (
    .clk(clk),
    .rst_n_in(rst_n),
    .rst_n_out(rst_n_sync)
);

always @(posedge clk) begin
    
end

// always @(posedge clk) begin
//     if(rst_n_sync) begin

//     end

// end


endmodule

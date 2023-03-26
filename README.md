# UART based Registers

This is basic Verilog IP to add control registers for Design Verification Process using UART Interface

`uart_core.v` contains UART TX/RX, many of blocks are slightly modified IPs taken from [libfpga](https://github.com/Wren6991/libfpga/tree/master)

Use `uart_regs` module from `uart_regs.v` to use UART based Configuration Registers.


### `uart_reg` IO Pins
---

`clk` - Main system clock

`rst_n` - Active Low Synchronous Reset

`rx` - Receiver Pin of module

`tx` - Transmitter Pin of module

`div_int` - Integer divider for `clk`

`div_frac` - Fractional part of divider of `clk`

`Reg{i}` - Configurable Register\\

Calculate baudrate by following formula:
`f_baud = fclk/(div_int + div_frac/2**16)`

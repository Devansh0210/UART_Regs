#! /usr/bin/vvp
:ivl_version "11.0 (stable)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision - 1;
:vpi_module "/usr/lib/x86_64-linux-gnu/ivl/system.vpi";
:vpi_module "/usr/lib/x86_64-linux-gnu/ivl/vhdl_sys.vpi";
:vpi_module "/usr/lib/x86_64-linux-gnu/ivl/vhdl_textio.vpi";
:vpi_module "/usr/lib/x86_64-linux-gnu/ivl/v2005_math.vpi";
:vpi_module "/usr/lib/x86_64-linux-gnu/ivl/va_math.vpi";
S_0x56137905a4f0 .scope module, "uart_regs" "uart_regs" 2 3;
 .timescale 0 -1;
    .port_info 0 /INPUT 1 "clk";
    .port_info 1 /INPUT 1 "rst_n";
    .port_info 2 /INPUT 1 "rx";
    .port_info 3 /INPUT 1 "tx";
    .port_info 4 /INPUT 10 "div_int";
    .port_info 5 /INPUT 4 "div_frac";
    .port_info 6 /OUTPUT 32 "Reg1";
    .port_info 7 /OUTPUT 32 "Reg2";
    .port_info 8 /OUTPUT 32 "Reg3";
    .port_info 9 /OUTPUT 32 "Reg4";
    .port_info 10 /OUTPUT 32 "Reg5";
    .port_info 11 /OUTPUT 32 "Reg6";
    .port_info 12 /OUTPUT 32 "Reg7";
    .port_info 13 /OUTPUT 32 "Reg8";
P_0x5613790220f0 .param/l "IDLE" 1 2 36, +C4<00000000000000000000000000000000>;
P_0x561379022130 .param/l "READ_COMPLETE" 1 2 42, +C4<00000000000000000000000000000110>;
P_0x561379022170 .param/l "READ_REG" 1 2 37, +C4<00000000000000000000000000000001>;
P_0x5613790221b0 .param/l "REG_ADDR" 1 2 26, +C4<00000000000000000000000000000011>;
P_0x5613790221f0 .param/l "RESOLVE" 1 2 43, +C4<00000000000000000000000000000111>;
P_0x561379022230 .param/l "RX_BYTE" 1 2 40, +C4<00000000000000000000000000000100>;
P_0x561379022270 .param/l "TX_BYTE" 1 2 39, +C4<00000000000000000000000000000011>;
P_0x5613790222b0 .param/l "WRITE_COMPLETE" 1 2 41, +C4<00000000000000000000000000000101>;
P_0x5613790222f0 .param/l "WRITE_REG" 1 2 38, +C4<00000000000000000000000000000010>;
P_0x561379022330 .param/l "W_REG" 0 2 5, +C4<00000000000000000000000000100000>;
o0x7fe5ade58998 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x56137908ce60_0 .net "Reg1", 31 0, o0x7fe5ade58998;  0 drivers
o0x7fe5ade589c8 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x56137908cf60_0 .net "Reg2", 31 0, o0x7fe5ade589c8;  0 drivers
o0x7fe5ade589f8 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x56137908d040_0 .net "Reg3", 31 0, o0x7fe5ade589f8;  0 drivers
o0x7fe5ade58a28 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x56137908d130_0 .net "Reg4", 31 0, o0x7fe5ade58a28;  0 drivers
o0x7fe5ade58a58 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x56137908d210_0 .net "Reg5", 31 0, o0x7fe5ade58a58;  0 drivers
o0x7fe5ade58a88 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x56137908d2f0_0 .net "Reg6", 31 0, o0x7fe5ade58a88;  0 drivers
o0x7fe5ade58ab8 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x56137908d3d0_0 .net "Reg7", 31 0, o0x7fe5ade58ab8;  0 drivers
o0x7fe5ade58ae8 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x56137908d4b0_0 .net "Reg8", 31 0, o0x7fe5ade58ae8;  0 drivers
v0x56137908d590_0 .net *"_ivl_1", 2 0, L_0x56137908e7e0;  1 drivers
L_0x7fe5adad0018 .functor BUFT 1, C4<101>, C4<0>, C4<0>, C4<0>;
v0x56137908d670_0 .net/2u *"_ivl_2", 2 0, L_0x7fe5adad0018;  1 drivers
v0x56137908d750_0 .var "addr", 2 0;
o0x7fe5ade57018 .functor BUFZ 1, C4<z>; HiZ drive
v0x56137908d830_0 .net "clk", 0 0, o0x7fe5ade57018;  0 drivers
v0x56137908d8d0_0 .var "cnt_byte", 2 0;
o0x7fe5ade571f8 .functor BUFZ 4, C4<zzzz>; HiZ drive
v0x56137908d9b0_0 .net "div_frac", 3 0, o0x7fe5ade571f8;  0 drivers
o0x7fe5ade57228 .functor BUFZ 10, C4<zzzzzzzzzz>; HiZ drive
v0x56137908da70_0 .net "div_int", 9 0, o0x7fe5ade57228;  0 drivers
v0x56137908db80 .array "mem", 7 0, 31 0;
v0x56137908dc40_0 .net "read_reg", 0 0, L_0x56137908e8e0;  1 drivers
o0x7fe5ade57078 .functor BUFZ 1, C4<z>; HiZ drive
v0x56137908dd00_0 .net "rst_n", 0 0, o0x7fe5ade57078;  0 drivers
v0x56137908dda0_0 .net "rst_n_sync", 0 0, L_0x5613790a0e20;  1 drivers
o0x7fe5ade57a38 .functor BUFZ 1, C4<z>; HiZ drive
v0x56137908de40_0 .net "rx", 0 0, o0x7fe5ade57a38;  0 drivers
v0x5613790874d0_0 .array/port v0x5613790874d0, 0;
v0x56137908df30_0 .net "rx_byte", 7 0, v0x5613790874d0_0;  1 drivers
v0x56137908e020_0 .net "rx_irq", 0 0, L_0x5613790a0c30;  1 drivers
v0x56137908e0c0_0 .var "rx_ren", 0 0;
v0x56137908e1b0_0 .net "rx_valid", 0 0, L_0x5613790a03c0;  1 drivers
v0x56137908e250_0 .var "state", 3 0;
v0x56137908e2f0_0 .var "temp_wdata", 31 0;
v0x56137908e3d0_0 .net "tx", 0 0, v0x56137908c150_0;  1 drivers
v0x56137908e470_0 .var "tx_byte", 7 0;
v0x56137908e510_0 .net "tx_done", 0 0, L_0x5613790a00d0;  1 drivers
v0x56137908e5b0_0 .var "tx_valid", 0 0;
E_0x561379027540/0 .event negedge, v0x561379060c00_0;
E_0x561379027540/1 .event posedge, v0x56137905ea70_0;
E_0x561379027540 .event/or E_0x561379027540/0, E_0x561379027540/1;
L_0x56137908e7e0 .part v0x5613790874d0_0, 5, 3;
L_0x56137908e8e0 .cmp/eq 3, L_0x56137908e7e0, L_0x7fe5adad0018;
S_0x561379052660 .scope module, "inst_reset_sync" "reset_sync" 2 80, 3 249 0, S_0x56137905a4f0;
 .timescale 0 -1;
    .port_info 0 /INPUT 1 "clk";
    .port_info 1 /INPUT 1 "rst_n_in";
    .port_info 2 /OUTPUT 1 "rst_n_out";
P_0x56137900f440 .param/l "N_CYCLES" 0 3 250, +C4<00000000000000000000000000000010>;
v0x56137905ea70_0 .net "clk", 0 0, o0x7fe5ade57018;  alias, 0 drivers
v0x56137905fe20_0 .var "delay", 1 0;
v0x561379060b60_0 .net "rst_n_in", 0 0, o0x7fe5ade57078;  alias, 0 drivers
v0x561379060c00_0 .net "rst_n_out", 0 0, L_0x5613790a0e20;  alias, 1 drivers
E_0x561379028560/0 .event negedge, v0x561379060b60_0;
E_0x561379028560/1 .event posedge, v0x56137905ea70_0;
E_0x561379028560 .event/or E_0x561379028560/0, E_0x561379028560/1;
L_0x5613790a0e20 .part v0x56137905fe20_0, 1, 1;
S_0x561379084a80 .scope module, "inst_uart" "uart_core" 2 62, 3 3 0, S_0x56137905a4f0;
 .timescale 0 -1;
    .port_info 0 /INPUT 1 "clk";
    .port_info 1 /INPUT 1 "rst_n";
    .port_info 2 /INPUT 1 "rx";
    .port_info 3 /OUTPUT 1 "tx";
    .port_info 4 /INPUT 10 "div_int";
    .port_info 5 /INPUT 4 "div_frac";
    .port_info 6 /INPUT 8 "tx_byte";
    .port_info 7 /OUTPUT 8 "rx_byte";
    .port_info 8 /INPUT 1 "tx_valid";
    .port_info 9 /OUTPUT 1 "rx_valid";
    .port_info 10 /OUTPUT 1 "tx_done";
    .port_info 11 /INPUT 1 "rxfifo_ren_ext";
    .port_info 12 /OUTPUT 1 "rx_irq";
P_0x561379084c60 .param/l "OVERSAMPLE" 0 3 4, +C4<00000000000000000000000000000100>;
P_0x561379084ca0 .param/l "RX_IDLE" 1 3 173, +C4<00000000000000000000000000000000>;
P_0x561379084ce0 .param/l "RX_START" 1 3 174, +C4<00000000000000000000000000000001>;
P_0x561379084d20 .param/l "RX_STOP" 1 3 175, +C4<00000000000000000000000000001010>;
P_0x561379084d60 .param/l "TX_IDLE" 1 3 51, +C4<00000000000000000000000000000000>;
P_0x561379084da0 .param/l "TX_START" 1 3 52, +C4<00000000000000000000000000000001>;
P_0x561379084de0 .param/l "TX_STOP" 1 3 53, +C4<00000000000000000000000000001010>;
P_0x561379084e20 .param/l "W_OVER" 1 3 45, +C4<00000000000000000000000000000010>;
L_0x56137904c310 .functor BUFZ 1, v0x56137908e5b0_0, C4<0>, C4<0>, C4<0>;
L_0x561379060a00 .functor BUFZ 8, v0x56137908e470_0, C4<00000000>, C4<00000000>, C4<00000000>;
L_0x5613790612a0 .functor AND 1, L_0x56137908ed40, v0x56137904b5c0_0, C4<1>, C4<1>;
L_0x56137904b400 .functor OR 1, L_0x56137909eff0, L_0x56137909f320, C4<0>, C4<0>;
L_0x56137900e9d0 .functor AND 1, L_0x5613790612a0, L_0x56137904b400, C4<1>, C4<1>;
L_0x5613790a0210 .functor BUFZ 1, L_0x56137908eaf0, C4<0>, C4<0>, C4<0>;
v0x561379089eb0_0 .net *"_ivl_10", 31 0, L_0x56137908eef0;  1 drivers
L_0x7fe5adad00a8 .functor BUFT 1, C4<0000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x561379089fb0_0 .net *"_ivl_13", 27 0, L_0x7fe5adad00a8;  1 drivers
L_0x7fe5adad00f0 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x56137908a090_0 .net/2u *"_ivl_14", 31 0, L_0x7fe5adad00f0;  1 drivers
v0x56137908a150_0 .net *"_ivl_16", 0 0, L_0x56137909eff0;  1 drivers
v0x56137908a210_0 .net *"_ivl_18", 31 0, L_0x56137909f160;  1 drivers
L_0x7fe5adad0138 .functor BUFT 1, C4<0000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x56137908a2f0_0 .net *"_ivl_21", 27 0, L_0x7fe5adad0138;  1 drivers
L_0x7fe5adad0180 .functor BUFT 1, C4<00000000000000000000000000001010>, C4<0>, C4<0>, C4<0>;
v0x56137908a3d0_0 .net/2u *"_ivl_22", 31 0, L_0x7fe5adad0180;  1 drivers
v0x56137908a4b0_0 .net *"_ivl_24", 0 0, L_0x56137909f320;  1 drivers
v0x56137908a570_0 .net *"_ivl_27", 0 0, L_0x56137904b400;  1 drivers
v0x56137908a630_0 .net *"_ivl_30", 31 0, L_0x56137909fc50;  1 drivers
L_0x7fe5adad01c8 .functor BUFT 1, C4<0000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x56137908a710_0 .net *"_ivl_33", 27 0, L_0x7fe5adad01c8;  1 drivers
L_0x7fe5adad0210 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x56137908a7f0_0 .net/2u *"_ivl_34", 31 0, L_0x7fe5adad0210;  1 drivers
v0x56137908a8d0_0 .net *"_ivl_38", 31 0, L_0x56137909fec0;  1 drivers
L_0x7fe5adad0258 .functor BUFT 1, C4<0000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x56137908a9b0_0 .net *"_ivl_41", 27 0, L_0x7fe5adad0258;  1 drivers
L_0x7fe5adad02a0 .functor BUFT 1, C4<00000000000000000000000000001001>, C4<0>, C4<0>, C4<0>;
v0x56137908aa90_0 .net/2u *"_ivl_42", 31 0, L_0x7fe5adad02a0;  1 drivers
v0x56137908ab70_0 .net *"_ivl_48", 31 0, L_0x5613790a02c0;  1 drivers
L_0x7fe5adad02e8 .functor BUFT 1, C4<0000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x56137908ac50_0 .net *"_ivl_51", 27 0, L_0x7fe5adad02e8;  1 drivers
L_0x7fe5adad0330 .functor BUFT 1, C4<00000000000000000000000000001010>, C4<0>, C4<0>, C4<0>;
v0x56137908ae40_0 .net/2u *"_ivl_52", 31 0, L_0x7fe5adad0330;  1 drivers
v0x56137908af20_0 .net *"_ivl_7", 0 0, L_0x56137908ed40;  1 drivers
v0x56137908afe0_0 .net *"_ivl_9", 0 0, L_0x5613790612a0;  1 drivers
v0x56137908b0a0_0 .net "clk", 0 0, o0x7fe5ade57018;  alias, 0 drivers
v0x56137908b140_0 .net "clk_en", 0 0, v0x56137904b5c0_0;  1 drivers
v0x56137908b1e0_0 .net "din", 0 0, L_0x5613790a0210;  1 drivers
v0x56137908b280_0 .net "div_frac", 3 0, o0x7fe5ade571f8;  alias, 0 drivers
v0x56137908b370_0 .net "div_int", 9 0, o0x7fe5ade57228;  alias, 0 drivers
v0x56137908b440_0 .net "rst_n", 0 0, o0x7fe5ade57078;  alias, 0 drivers
v0x56137908b4e0_0 .net "rst_n_sync", 0 0, L_0x56137908ea50;  1 drivers
v0x56137908b580_0 .net "rx", 0 0, o0x7fe5ade57a38;  alias, 0 drivers
v0x56137908b620_0 .net "rx_byte", 7 0, v0x5613790874d0_0;  alias, 1 drivers
v0x56137908b6f0_0 .net "rx_fifo_empty", 0 0, L_0x5613790a0b40;  1 drivers
v0x56137908b7c0_0 .net "rx_fifo_full", 0 0, L_0x5613790a0a00;  1 drivers
v0x56137908b890_0 .net "rx_fifo_lvl", 2 0, v0x5613790873f0_0;  1 drivers
v0x56137908b960_0 .net "rx_irq", 0 0, L_0x5613790a0c30;  alias, 1 drivers
v0x56137908bc10_0 .var "rx_over_ctr", 1 0;
v0x56137908bcb0_0 .var "rx_shifter", 7 0;
v0x56137908bd80_0 .var "rx_state", 3 0;
v0x56137908be40_0 .net "rx_sync", 0 0, L_0x56137908eaf0;  1 drivers
v0x56137908bf10_0 .net "rx_valid", 0 0, L_0x5613790a03c0;  alias, 1 drivers
v0x56137908bfb0_0 .net "rxfifo_ren_ext", 0 0, v0x56137908e0c0_0;  1 drivers
v0x56137908c080_0 .var "rxfifo_wen", 0 0;
v0x56137908c150_0 .var "tx", 0 0;
v0x56137908c1f0_0 .net "tx_busy", 0 0, L_0x56137909fd80;  1 drivers
v0x56137908c290_0 .net "tx_byte", 7 0, v0x56137908e470_0;  1 drivers
v0x56137908c370_0 .net "tx_done", 0 0, L_0x5613790a00d0;  alias, 1 drivers
v0x56137908c430_0 .net "tx_fifo_empty", 0 0, L_0x56137909fbb0;  1 drivers
v0x56137908c500_0 .net "tx_fifo_full", 0 0, L_0x56137909f9f0;  1 drivers
v0x56137908c5d0_0 .net "tx_fifo_lvl", 2 0, v0x5613790894b0_0;  1 drivers
v0x56137908c6a0_0 .net "tx_fifo_rdata", 7 0, L_0x56137909f930;  1 drivers
v0x56137908c770_0 .net "tx_fifo_ren", 0 0, L_0x56137900e9d0;  1 drivers
v0x56137908c840_0 .net "tx_fifo_wdata", 7 0, L_0x561379060a00;  1 drivers
v0x56137908c910_0 .net "tx_fifo_wen", 0 0, L_0x56137904c310;  1 drivers
v0x56137908c9e0_0 .var "tx_over_ctr", 1 0;
v0x56137908ca80_0 .var "tx_shifter", 7 0;
v0x56137908cb20_0 .var "tx_state", 3 0;
v0x56137908cc00_0 .net "tx_valid", 0 0, v0x56137908e5b0_0;  1 drivers
L_0x56137908ed40 .reduce/nor L_0x56137909fbb0;
L_0x56137908eef0 .concat [ 4 28 0 0], v0x56137908cb20_0, L_0x7fe5adad00a8;
L_0x56137909eff0 .cmp/eq 32, L_0x56137908eef0, L_0x7fe5adad00f0;
L_0x56137909f160 .concat [ 4 28 0 0], v0x56137908cb20_0, L_0x7fe5adad0138;
L_0x56137909f320 .cmp/eq 32, L_0x56137909f160, L_0x7fe5adad0180;
L_0x56137909fc50 .concat [ 4 28 0 0], v0x56137908cb20_0, L_0x7fe5adad01c8;
L_0x56137909fd80 .cmp/ne 32, L_0x56137909fc50, L_0x7fe5adad0210;
L_0x56137909fec0 .concat [ 4 28 0 0], v0x56137908cb20_0, L_0x7fe5adad0258;
L_0x5613790a00d0 .cmp/eq 32, L_0x56137909fec0, L_0x7fe5adad02a0;
L_0x5613790a02c0 .concat [ 4 28 0 0], v0x56137908bd80_0, L_0x7fe5adad02e8;
L_0x5613790a03c0 .cmp/eq 32, L_0x5613790a02c0, L_0x7fe5adad0330;
L_0x5613790a0c30 .reduce/nor L_0x5613790a0b40;
S_0x561379085380 .scope module, "inst_clk_div" "clkdiv_frac" 3 60, 3 290 0, S_0x561379084a80;
 .timescale 0 -1;
    .port_info 0 /INPUT 1 "clk";
    .port_info 1 /INPUT 1 "rst_n";
    .port_info 2 /INPUT 1 "en";
    .port_info 3 /INPUT 10 "div_int";
    .port_info 4 /INPUT 4 "div_frac";
    .port_info 5 /OUTPUT 1 "clk_en";
P_0x561379069e80 .param/l "W_DIV_FRAC" 0 3 292, +C4<00000000000000000000000000000100>;
P_0x561379069ec0 .param/l "W_DIV_INT" 0 3 291, +C4<00000000000000000000000000001010>;
v0x56137904b520_0 .net "clk", 0 0, o0x7fe5ade57018;  alias, 0 drivers
v0x56137904b5c0_0 .var "clk_en", 0 0;
v0x5613790856f0_0 .var "ctr_frac", 3 0;
v0x5613790857e0_0 .var "ctr_int", 9 0;
v0x5613790858c0_0 .net "div_frac", 3 0, o0x7fe5ade571f8;  alias, 0 drivers
v0x5613790859f0_0 .net "div_int", 9 0, o0x7fe5ade57228;  alias, 0 drivers
L_0x7fe5adad0060 .functor BUFT 1, C4<1>, C4<0>, C4<0>, C4<0>;
v0x561379085ad0_0 .net "en", 0 0, L_0x7fe5adad0060;  1 drivers
v0x561379085b90_0 .var "frac_carry", 0 0;
v0x561379085c50_0 .net "rst_n", 0 0, L_0x56137908ea50;  alias, 1 drivers
E_0x56137906c2e0/0 .event negedge, v0x561379085c50_0;
E_0x56137906c2e0/1 .event posedge, v0x56137905ea70_0;
E_0x56137906c2e0 .event/or E_0x56137906c2e0/0, E_0x56137906c2e0/1;
S_0x561379085dd0 .scope module, "inst_reset_sync" "reset_sync" 3 30, 3 249 0, S_0x561379084a80;
 .timescale 0 -1;
    .port_info 0 /INPUT 1 "clk";
    .port_info 1 /INPUT 1 "rst_n_in";
    .port_info 2 /OUTPUT 1 "rst_n_out";
P_0x561379085f80 .param/l "N_CYCLES" 0 3 250, +C4<00000000000000000000000000000010>;
v0x561379086070_0 .net "clk", 0 0, o0x7fe5ade57018;  alias, 0 drivers
v0x561379086180_0 .var "delay", 1 0;
v0x561379086280_0 .net "rst_n_in", 0 0, o0x7fe5ade57078;  alias, 0 drivers
v0x561379086350_0 .net "rst_n_out", 0 0, L_0x56137908ea50;  alias, 1 drivers
L_0x56137908ea50 .part v0x561379086180_0, 1, 1;
S_0x561379086440 .scope module, "inst_rx_fifo" "sync_fifo" 3 180, 3 336 0, S_0x561379084a80;
 .timescale 0 -1;
    .port_info 0 /INPUT 1 "clk";
    .port_info 1 /INPUT 1 "rst_n";
    .port_info 2 /INPUT 8 "w_data";
    .port_info 3 /INPUT 1 "w_en";
    .port_info 4 /OUTPUT 8 "r_data";
    .port_info 5 /INPUT 1 "r_en";
    .port_info 6 /OUTPUT 1 "full";
    .port_info 7 /OUTPUT 1 "empty";
    .port_info 8 /OUTPUT 3 "level";
P_0x561379086650 .param/l "DEPTH" 0 3 337, +C4<00000000000000000000000000000101>;
P_0x561379086690 .param/l "WIDTH" 0 3 338, +C4<00000000000000000000000000001000>;
P_0x5613790866d0 .param/l "W_LEVEL" 0 3 339, +C4<00000000000000000000000000000011>;
L_0x5613790a0640 .functor AND 1, v0x56137908c080_0, L_0x5613790a0550, C4<1>, C4<1>;
L_0x5613790a0840 .functor AND 1, v0x56137908e0c0_0, L_0x5613790a0750, C4<1>, C4<1>;
v0x561379086ef0_0 .net *"_ivl_1", 0 0, L_0x5613790a0550;  1 drivers
v0x561379086fd0_0 .net *"_ivl_14", 0 0, L_0x5613790a0aa0;  1 drivers
v0x5613790870b0_0 .net *"_ivl_5", 0 0, L_0x5613790a0750;  1 drivers
v0x561379087180_0 .net "clk", 0 0, o0x7fe5ade57018;  alias, 0 drivers
v0x561379087220_0 .net "empty", 0 0, L_0x5613790a0b40;  alias, 1 drivers
v0x561379087330_0 .net "full", 0 0, L_0x5613790a0a00;  alias, 1 drivers
v0x5613790873f0_0 .var "level", 2 0;
v0x5613790874d0 .array "mem", 5 0, 7 0;
v0x561379087690_0 .net "pop", 0 0, L_0x5613790a0840;  1 drivers
v0x561379087750_0 .net "push", 0 0, L_0x5613790a0640;  1 drivers
v0x561379087810_0 .net "r_data", 7 0, v0x5613790874d0_0;  alias, 1 drivers
v0x5613790878f0_0 .net "r_en", 0 0, v0x56137908e0c0_0;  alias, 1 drivers
v0x5613790879b0_0 .net "rst_n", 0 0, L_0x56137908ea50;  alias, 1 drivers
v0x561379087a50_0 .var "valid", 5 0;
v0x561379087b30_0 .net "w_data", 7 0, v0x56137908bcb0_0;  1 drivers
v0x561379087c10_0 .net "w_en", 0 0, v0x56137908c080_0;  1 drivers
E_0x561378ff7b50 .event posedge, v0x56137905ea70_0;
E_0x56137906c360 .event edge, v0x561379087b30_0;
L_0x5613790a0550 .reduce/nor L_0x5613790a0a00;
L_0x5613790a0750 .reduce/nor L_0x5613790a0b40;
L_0x5613790a0a00 .part v0x561379087a50_0, 4, 1;
L_0x5613790a0aa0 .part v0x561379087a50_0, 0, 1;
L_0x5613790a0b40 .reduce/nor L_0x5613790a0aa0;
S_0x561379086a10 .scope begin, "shift_data" "shift_data" 3 376, 3 376 0, S_0x561379086440;
 .timescale 0 -1;
v0x561379086df0_0 .var/i "i", 31 0;
S_0x561379086bf0 .scope begin, "data_stage" "data_stage" 3 378, 3 378 0, S_0x561379086a10;
 .timescale 0 -1;
S_0x561379087e40 .scope module, "inst_sync_rx" "sync_1bit" 3 38, 3 269 0, S_0x561379084a80;
 .timescale 0 -1;
    .port_info 0 /INPUT 1 "clk";
    .port_info 1 /INPUT 1 "rst_n";
    .port_info 2 /INPUT 1 "i";
    .port_info 3 /OUTPUT 1 "o";
P_0x561379087fd0 .param/l "N_STAGES" 0 3 270, +C4<00000000000000000000000000000010>;
v0x561379088070_0 .net "clk", 0 0, o0x7fe5ade57018;  alias, 0 drivers
v0x561379088130_0 .net "i", 0 0, o0x7fe5ade57a38;  alias, 0 drivers
v0x5613790881f0_0 .net "o", 0 0, L_0x56137908eaf0;  alias, 1 drivers
v0x5613790882c0_0 .net "rst_n", 0 0, L_0x56137908ea50;  alias, 1 drivers
v0x561379088360_0 .var "sync_flops", 1 0;
L_0x56137908eaf0 .part v0x561379088360_0, 1, 1;
S_0x5613790884e0 .scope module, "inst_tx_fifo" "sync_fifo" 3 82, 3 336 0, S_0x561379084a80;
 .timescale 0 -1;
    .port_info 0 /INPUT 1 "clk";
    .port_info 1 /INPUT 1 "rst_n";
    .port_info 2 /INPUT 8 "w_data";
    .port_info 3 /INPUT 1 "w_en";
    .port_info 4 /OUTPUT 8 "r_data";
    .port_info 5 /INPUT 1 "r_en";
    .port_info 6 /OUTPUT 1 "full";
    .port_info 7 /OUTPUT 1 "empty";
    .port_info 8 /OUTPUT 3 "level";
P_0x561379088710 .param/l "DEPTH" 0 3 337, +C4<00000000000000000000000000000101>;
P_0x561379088750 .param/l "WIDTH" 0 3 338, +C4<00000000000000000000000000001000>;
P_0x561379088790 .param/l "W_LEVEL" 0 3 339, +C4<00000000000000000000000000000011>;
L_0x56137909f710 .functor AND 1, L_0x56137904c310, L_0x56137909f620, C4<1>, C4<1>;
L_0x56137909f870 .functor AND 1, L_0x56137900e9d0, L_0x56137909f7d0, C4<1>, C4<1>;
v0x561379089590_0 .array/port v0x561379089590, 0;
L_0x56137909f930 .functor BUFZ 8, v0x561379089590_0, C4<00000000>, C4<00000000>, C4<00000000>;
v0x561379088fb0_0 .net *"_ivl_1", 0 0, L_0x56137909f620;  1 drivers
v0x561379089090_0 .net *"_ivl_14", 0 0, L_0x56137909fa90;  1 drivers
v0x561379089170_0 .net *"_ivl_5", 0 0, L_0x56137909f7d0;  1 drivers
v0x561379089240_0 .net "clk", 0 0, o0x7fe5ade57018;  alias, 0 drivers
v0x5613790892e0_0 .net "empty", 0 0, L_0x56137909fbb0;  alias, 1 drivers
v0x5613790893f0_0 .net "full", 0 0, L_0x56137909f9f0;  alias, 1 drivers
v0x5613790894b0_0 .var "level", 2 0;
v0x561379089590 .array "mem", 5 0, 7 0;
v0x561379089750_0 .net "pop", 0 0, L_0x56137909f870;  1 drivers
v0x561379089810_0 .net "push", 0 0, L_0x56137909f710;  1 drivers
v0x5613790898d0_0 .net "r_data", 7 0, L_0x56137909f930;  alias, 1 drivers
v0x5613790899b0_0 .net "r_en", 0 0, L_0x56137900e9d0;  alias, 1 drivers
v0x561379089a70_0 .net "rst_n", 0 0, L_0x56137908ea50;  alias, 1 drivers
v0x561379089b10_0 .var "valid", 5 0;
v0x561379089bf0_0 .net "w_data", 7 0, L_0x561379060a00;  alias, 1 drivers
v0x561379089cd0_0 .net "w_en", 0 0, L_0x56137904c310;  alias, 1 drivers
E_0x561379088a30 .event edge, v0x561379089bf0_0;
L_0x56137909f620 .reduce/nor L_0x56137909f9f0;
L_0x56137909f7d0 .reduce/nor L_0x56137909fbb0;
L_0x56137909f9f0 .part v0x561379089b10_0, 4, 1;
L_0x56137909fa90 .part v0x561379089b10_0, 0, 1;
L_0x56137909fbb0 .reduce/nor L_0x56137909fa90;
S_0x561379088ab0 .scope begin, "shift_data" "shift_data" 3 376, 3 376 0, S_0x5613790884e0;
 .timescale 0 -1;
v0x561379088eb0_0 .var/i "i", 31 0;
S_0x561379088cb0 .scope begin, "data_stage" "data_stage" 3 378, 3 378 0, S_0x561379088ab0;
 .timescale 0 -1;
    .scope S_0x561379085dd0;
T_0 ;
    %wait E_0x561379028560;
    %load/vec4 v0x561379086280_0;
    %nor/r;
    %flag_set/vec4 8;
    %jmp/0xz  T_0.0, 8;
    %pushi/vec4 0, 0, 2;
    %assign/vec4 v0x561379086180_0, 0;
    %jmp T_0.1;
T_0.0 ;
    %load/vec4 v0x561379086180_0;
    %parti/s 1, 0, 2;
    %concati/vec4 1, 0, 1;
    %assign/vec4 v0x561379086180_0, 0;
T_0.1 ;
    %jmp T_0;
    .thread T_0;
    .scope S_0x561379087e40;
T_1 ;
    %wait E_0x56137906c2e0;
    %load/vec4 v0x5613790882c0_0;
    %nor/r;
    %flag_set/vec4 8;
    %jmp/0xz  T_1.0, 8;
    %pushi/vec4 3, 0, 2;
    %assign/vec4 v0x561379088360_0, 0;
    %jmp T_1.1;
T_1.0 ;
    %load/vec4 v0x561379088360_0;
    %parti/s 1, 0, 2;
    %load/vec4 v0x561379088130_0;
    %concat/vec4; draw_concat_vec4
    %assign/vec4 v0x561379088360_0, 0;
T_1.1 ;
    %jmp T_1;
    .thread T_1;
    .scope S_0x561379085380;
T_2 ;
    %wait E_0x56137906c2e0;
    %load/vec4 v0x561379085c50_0;
    %nor/r;
    %flag_set/vec4 8;
    %jmp/0xz  T_2.0, 8;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x56137904b5c0_0, 0;
    %pushi/vec4 1, 0, 10;
    %assign/vec4 v0x5613790857e0_0, 0;
    %pushi/vec4 0, 0, 4;
    %assign/vec4 v0x5613790856f0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x561379085b90_0, 0;
    %jmp T_2.1;
T_2.0 ;
    %load/vec4 v0x561379085ad0_0;
    %nor/r;
    %flag_set/vec4 8;
    %jmp/0xz  T_2.2, 8;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x56137904b5c0_0, 0;
    %pushi/vec4 1, 0, 10;
    %assign/vec4 v0x5613790857e0_0, 0;
    %pushi/vec4 0, 0, 4;
    %assign/vec4 v0x5613790856f0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x561379085b90_0, 0;
    %jmp T_2.3;
T_2.2 ;
    %load/vec4 v0x5613790857e0_0;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_2.4, 4;
    %load/vec4 v0x5613790856f0_0;
    %pad/u 5;
    %load/vec4 v0x5613790858c0_0;
    %pad/u 5;
    %add;
    %split/vec4 4;
    %assign/vec4 v0x5613790856f0_0, 0;
    %assign/vec4 v0x561379085b90_0, 0;
    %load/vec4 v0x5613790859f0_0;
    %load/vec4 v0x561379085b90_0;
    %pad/u 10;
    %add;
    %assign/vec4 v0x5613790857e0_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x56137904b5c0_0, 0;
    %jmp T_2.5;
T_2.4 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x56137904b5c0_0, 0;
    %load/vec4 v0x5613790857e0_0;
    %subi 1, 0, 10;
    %assign/vec4 v0x5613790857e0_0, 0;
T_2.5 ;
T_2.3 ;
T_2.1 ;
    %jmp T_2;
    .thread T_2;
    .scope S_0x5613790884e0;
T_3 ;
    %wait E_0x56137906c2e0;
    %load/vec4 v0x561379089a70_0;
    %nor/r;
    %flag_set/vec4 8;
    %jmp/0xz  T_3.0, 8;
    %pushi/vec4 0, 0, 6;
    %assign/vec4 v0x561379089b10_0, 0;
    %jmp T_3.1;
T_3.0 ;
    %load/vec4 v0x561379089cd0_0;
    %flag_set/vec4 8;
    %load/vec4 v0x5613790899b0_0;
    %flag_set/vec4 9;
    %flag_or 9, 8;
    %jmp/0xz  T_3.2, 9;
    %load/vec4 v0x561379089b10_0;
    %ix/getv 4, v0x561379089810_0;
    %shiftl 4;
    %pushi/vec4 0, 0, 4;
    %load/vec4 v0x561379089810_0;
    %concat/vec4; draw_concat_vec4
    %pad/u 6;
    %or;
    %ix/getv 4, v0x561379089750_0;
    %shiftr 4;
    %assign/vec4 v0x561379089b10_0, 0;
T_3.2 ;
T_3.1 ;
    %jmp T_3;
    .thread T_3;
    .scope S_0x5613790884e0;
T_4 ;
    %wait E_0x561378ff7b50;
    %fork t_1, S_0x561379088ab0;
    %jmp t_0;
    .scope S_0x561379088ab0;
t_1 ;
    %pushi/vec4 0, 0, 32;
    %store/vec4 v0x561379088eb0_0, 0, 32;
T_4.0 ;
    %load/vec4 v0x561379088eb0_0;
    %cmpi/s 5, 0, 32;
    %jmp/0xz T_4.1, 5;
    %fork t_3, S_0x561379088cb0;
    %jmp t_2;
    .scope S_0x561379088cb0;
t_3 ;
    %load/vec4 v0x5613790899b0_0;
    %flag_set/vec4 8;
    %load/vec4 v0x561379089cd0_0;
    %load/vec4 v0x561379089b10_0;
    %load/vec4 v0x561379088eb0_0;
    %part/s 1;
    %nor/r;
    %and;
    %load/vec4 v0x561379088eb0_0;
    %pushi/vec4 4, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x561379089b10_0;
    %load/vec4 v0x561379088eb0_0;
    %addi 1, 0, 32;
    %part/s 1;
    %nor/r;
    %or;
    %and;
    %flag_set/vec4 9;
    %flag_or 9, 8;
    %jmp/0xz  T_4.2, 9;
    %load/vec4 v0x561379089b10_0;
    %load/vec4 v0x561379088eb0_0;
    %addi 1, 0, 32;
    %part/s 1;
    %flag_set/vec4 8;
    %jmp/0 T_4.4, 8;
    %load/vec4 v0x561379088eb0_0;
    %pad/s 33;
    %addi 1, 0, 33;
    %ix/vec4/s 4;
    %load/vec4a v0x561379089590, 4;
    %jmp/1 T_4.5, 8;
T_4.4 ; End of true expr.
    %load/vec4 v0x561379089bf0_0;
    %jmp/0 T_4.5, 8;
 ; End of false expr.
    %blend;
T_4.5;
    %ix/getv/s 3, v0x561379088eb0_0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x561379089590, 0, 4;
T_4.2 ;
    %end;
    .scope S_0x561379088ab0;
t_2 %join;
    %load/vec4 v0x561379088eb0_0;
    %addi 1, 0, 32;
    %store/vec4 v0x561379088eb0_0, 0, 32;
    %jmp T_4.0;
T_4.1 ;
    %end;
    .scope S_0x5613790884e0;
t_0 %join;
    %jmp T_4;
    .thread T_4;
    .scope S_0x5613790884e0;
T_5 ;
    %wait E_0x561379088a30;
    %load/vec4 v0x561379089bf0_0;
    %ix/load 4, 5, 0;
    %flag_set/imm 4, 0;
    %store/vec4a v0x561379089590, 4, 0;
    %jmp T_5;
    .thread T_5, $push;
    .scope S_0x5613790884e0;
T_6 ;
    %wait E_0x56137906c2e0;
    %load/vec4 v0x561379089a70_0;
    %nor/r;
    %flag_set/vec4 8;
    %jmp/0xz  T_6.0, 8;
    %pushi/vec4 0, 0, 3;
    %assign/vec4 v0x5613790894b0_0, 0;
    %jmp T_6.1;
T_6.0 ;
    %load/vec4 v0x5613790894b0_0;
    %load/vec4 v0x561379089810_0;
    %pad/u 3;
    %add;
    %load/vec4 v0x561379089750_0;
    %pad/u 3;
    %sub;
    %assign/vec4 v0x5613790894b0_0, 0;
T_6.1 ;
    %jmp T_6;
    .thread T_6;
    .scope S_0x5613790884e0;
T_7 ;
    %wait E_0x561378ff7b50;
    %load/vec4 v0x561379089cd0_0;
    %load/vec4 v0x5613790893f0_0;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_7.0, 8;
    %vpi_call 3 405 "$display", $time, ": WARNING %m: push on full" {0 0 0};
T_7.0 ;
    %jmp T_7;
    .thread T_7;
    .scope S_0x5613790884e0;
T_8 ;
    %wait E_0x561378ff7b50;
    %load/vec4 v0x5613790899b0_0;
    %load/vec4 v0x5613790892e0_0;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_8.0, 8;
    %vpi_call 3 406 "$display", $time, ": WARNING %m: pop on empty" {0 0 0};
T_8.0 ;
    %jmp T_8;
    .thread T_8;
    .scope S_0x561379086440;
T_9 ;
    %wait E_0x56137906c2e0;
    %load/vec4 v0x5613790879b0_0;
    %nor/r;
    %flag_set/vec4 8;
    %jmp/0xz  T_9.0, 8;
    %pushi/vec4 0, 0, 6;
    %assign/vec4 v0x561379087a50_0, 0;
    %jmp T_9.1;
T_9.0 ;
    %load/vec4 v0x561379087c10_0;
    %flag_set/vec4 8;
    %load/vec4 v0x5613790878f0_0;
    %flag_set/vec4 9;
    %flag_or 9, 8;
    %jmp/0xz  T_9.2, 9;
    %load/vec4 v0x561379087a50_0;
    %ix/getv 4, v0x561379087750_0;
    %shiftl 4;
    %pushi/vec4 0, 0, 4;
    %load/vec4 v0x561379087750_0;
    %concat/vec4; draw_concat_vec4
    %pad/u 6;
    %or;
    %ix/getv 4, v0x561379087690_0;
    %shiftr 4;
    %assign/vec4 v0x561379087a50_0, 0;
T_9.2 ;
T_9.1 ;
    %jmp T_9;
    .thread T_9;
    .scope S_0x561379086440;
T_10 ;
    %wait E_0x561378ff7b50;
    %fork t_5, S_0x561379086a10;
    %jmp t_4;
    .scope S_0x561379086a10;
t_5 ;
    %pushi/vec4 0, 0, 32;
    %store/vec4 v0x561379086df0_0, 0, 32;
T_10.0 ;
    %load/vec4 v0x561379086df0_0;
    %cmpi/s 5, 0, 32;
    %jmp/0xz T_10.1, 5;
    %fork t_7, S_0x561379086bf0;
    %jmp t_6;
    .scope S_0x561379086bf0;
t_7 ;
    %load/vec4 v0x5613790878f0_0;
    %flag_set/vec4 8;
    %load/vec4 v0x561379087c10_0;
    %load/vec4 v0x561379087a50_0;
    %load/vec4 v0x561379086df0_0;
    %part/s 1;
    %nor/r;
    %and;
    %load/vec4 v0x561379086df0_0;
    %pushi/vec4 4, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x561379087a50_0;
    %load/vec4 v0x561379086df0_0;
    %addi 1, 0, 32;
    %part/s 1;
    %nor/r;
    %or;
    %and;
    %flag_set/vec4 9;
    %flag_or 9, 8;
    %jmp/0xz  T_10.2, 9;
    %load/vec4 v0x561379087a50_0;
    %load/vec4 v0x561379086df0_0;
    %addi 1, 0, 32;
    %part/s 1;
    %flag_set/vec4 8;
    %jmp/0 T_10.4, 8;
    %load/vec4 v0x561379086df0_0;
    %pad/s 33;
    %addi 1, 0, 33;
    %ix/vec4/s 4;
    %load/vec4a v0x5613790874d0, 4;
    %jmp/1 T_10.5, 8;
T_10.4 ; End of true expr.
    %load/vec4 v0x561379087b30_0;
    %jmp/0 T_10.5, 8;
 ; End of false expr.
    %blend;
T_10.5;
    %ix/getv/s 3, v0x561379086df0_0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x5613790874d0, 0, 4;
T_10.2 ;
    %end;
    .scope S_0x561379086a10;
t_6 %join;
    %load/vec4 v0x561379086df0_0;
    %addi 1, 0, 32;
    %store/vec4 v0x561379086df0_0, 0, 32;
    %jmp T_10.0;
T_10.1 ;
    %end;
    .scope S_0x561379086440;
t_4 %join;
    %jmp T_10;
    .thread T_10;
    .scope S_0x561379086440;
T_11 ;
    %wait E_0x56137906c360;
    %load/vec4 v0x561379087b30_0;
    %ix/load 4, 5, 0;
    %flag_set/imm 4, 0;
    %store/vec4a v0x5613790874d0, 4, 0;
    %jmp T_11;
    .thread T_11, $push;
    .scope S_0x561379086440;
T_12 ;
    %wait E_0x56137906c2e0;
    %load/vec4 v0x5613790879b0_0;
    %nor/r;
    %flag_set/vec4 8;
    %jmp/0xz  T_12.0, 8;
    %pushi/vec4 0, 0, 3;
    %assign/vec4 v0x5613790873f0_0, 0;
    %jmp T_12.1;
T_12.0 ;
    %load/vec4 v0x5613790873f0_0;
    %load/vec4 v0x561379087750_0;
    %pad/u 3;
    %add;
    %load/vec4 v0x561379087690_0;
    %pad/u 3;
    %sub;
    %assign/vec4 v0x5613790873f0_0, 0;
T_12.1 ;
    %jmp T_12;
    .thread T_12;
    .scope S_0x561379086440;
T_13 ;
    %wait E_0x561378ff7b50;
    %load/vec4 v0x561379087c10_0;
    %load/vec4 v0x561379087330_0;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_13.0, 8;
    %vpi_call 3 405 "$display", $time, ": WARNING %m: push on full" {0 0 0};
T_13.0 ;
    %jmp T_13;
    .thread T_13;
    .scope S_0x561379086440;
T_14 ;
    %wait E_0x561378ff7b50;
    %load/vec4 v0x5613790878f0_0;
    %load/vec4 v0x561379087220_0;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_14.0, 8;
    %vpi_call 3 406 "$display", $time, ": WARNING %m: pop on empty" {0 0 0};
T_14.0 ;
    %jmp T_14;
    .thread T_14;
    .scope S_0x561379084a80;
T_15 ;
    %wait E_0x56137906c2e0;
    %load/vec4 v0x56137908b4e0_0;
    %nor/r;
    %flag_set/vec4 8;
    %jmp/0xz  T_15.0, 8;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x56137908c150_0, 0;
    %pushi/vec4 0, 0, 2;
    %assign/vec4 v0x56137908c9e0_0, 0;
    %pushi/vec4 0, 0, 4;
    %assign/vec4 v0x56137908cb20_0, 0;
    %pushi/vec4 0, 0, 8;
    %assign/vec4 v0x56137908ca80_0, 0;
    %jmp T_15.1;
T_15.0 ;
    %load/vec4 v0x56137908b140_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_15.2, 8;
    %load/vec4 v0x56137908c9e0_0;
    %addi 1, 0, 2;
    %assign/vec4 v0x56137908c9e0_0, 0;
T_15.2 ;
    %load/vec4 v0x56137908b140_0;
    %load/vec4 v0x56137908c9e0_0;
    %nor/r;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_15.4, 8;
    %load/vec4 v0x56137908cb20_0;
    %addi 1, 0, 4;
    %assign/vec4 v0x56137908cb20_0, 0;
    %load/vec4 v0x56137908cb20_0;
    %dup/vec4;
    %pushi/vec4 0, 0, 4;
    %cmp/u;
    %jmp/1 T_15.6, 6;
    %dup/vec4;
    %pushi/vec4 1, 0, 4;
    %cmp/u;
    %jmp/1 T_15.7, 6;
    %dup/vec4;
    %pushi/vec4 10, 0, 4;
    %cmp/u;
    %jmp/1 T_15.8, 6;
    %load/vec4 v0x56137908ca80_0;
    %ix/load 4, 1, 0;
    %flag_set/imm 4, 0;
    %shiftr 4;
    %assign/vec4 v0x56137908ca80_0, 0;
    %load/vec4 v0x56137908cb20_0;
    %pad/u 32;
    %cmpi/e 9, 0, 32;
    %jmp/0xz  T_15.11, 4;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x56137908c150_0, 0;
    %jmp T_15.12;
T_15.11 ;
    %load/vec4 v0x56137908ca80_0;
    %parti/s 1, 0, 2;
    %assign/vec4 v0x56137908c150_0, 0;
T_15.12 ;
    %jmp T_15.10;
T_15.6 ;
    %load/vec4 v0x56137908c5d0_0;
    %cmpi/e 1, 0, 3;
    %jmp/0xz  T_15.13, 4;
    %load/vec4 v0x56137908c6a0_0;
    %assign/vec4 v0x56137908ca80_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x56137908c150_0, 0;
    %jmp T_15.14;
T_15.13 ;
    %pushi/vec4 0, 0, 2;
    %assign/vec4 v0x56137908c9e0_0, 0;
    %pushi/vec4 0, 0, 4;
    %assign/vec4 v0x56137908cb20_0, 0;
T_15.14 ;
    %jmp T_15.10;
T_15.7 ;
    %load/vec4 v0x56137908ca80_0;
    %ix/load 4, 1, 0;
    %flag_set/imm 4, 0;
    %shiftr 4;
    %assign/vec4 v0x56137908ca80_0, 0;
    %load/vec4 v0x56137908ca80_0;
    %parti/s 1, 0, 2;
    %assign/vec4 v0x56137908c150_0, 0;
    %jmp T_15.10;
T_15.8 ;
    %load/vec4 v0x56137908cc00_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_15.15, 8;
    %load/vec4 v0x56137908c290_0;
    %assign/vec4 v0x56137908ca80_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x56137908c150_0, 0;
    %pushi/vec4 1, 0, 4;
    %assign/vec4 v0x56137908cb20_0, 0;
    %jmp T_15.16;
T_15.15 ;
    %pushi/vec4 0, 0, 4;
    %assign/vec4 v0x56137908cb20_0, 0;
    %pushi/vec4 0, 0, 2;
    %assign/vec4 v0x56137908c9e0_0, 0;
T_15.16 ;
    %jmp T_15.10;
T_15.10 ;
    %pop/vec4 1;
T_15.4 ;
T_15.1 ;
    %jmp T_15;
    .thread T_15;
    .scope S_0x561379084a80;
T_16 ;
    %wait E_0x56137906c2e0;
    %load/vec4 v0x56137908b4e0_0;
    %nor/r;
    %flag_set/vec4 8;
    %jmp/0xz  T_16.0, 8;
    %pushi/vec4 0, 0, 2;
    %assign/vec4 v0x56137908bc10_0, 0;
    %pushi/vec4 0, 0, 4;
    %assign/vec4 v0x56137908bd80_0, 0;
    %pushi/vec4 0, 0, 8;
    %assign/vec4 v0x56137908bcb0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x56137908c080_0, 0;
    %jmp T_16.1;
T_16.0 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x56137908c080_0, 0;
    %load/vec4 v0x56137908b140_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_16.2, 8;
    %load/vec4 v0x56137908bc10_0;
    %addi 1, 0, 2;
    %assign/vec4 v0x56137908bc10_0, 0;
T_16.2 ;
    %load/vec4 v0x56137908b140_0;
    %load/vec4 v0x56137908bc10_0;
    %nor/r;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_16.4, 8;
    %load/vec4 v0x56137908bd80_0;
    %addi 1, 0, 4;
    %assign/vec4 v0x56137908bd80_0, 0;
    %load/vec4 v0x56137908bd80_0;
    %dup/vec4;
    %pushi/vec4 0, 0, 4;
    %cmp/u;
    %jmp/1 T_16.6, 6;
    %dup/vec4;
    %pushi/vec4 1, 0, 4;
    %cmp/u;
    %jmp/1 T_16.7, 6;
    %dup/vec4;
    %pushi/vec4 10, 0, 4;
    %cmp/u;
    %jmp/1 T_16.8, 6;
    %load/vec4 v0x56137908bcb0_0;
    %ix/load 4, 1, 0;
    %flag_set/imm 4, 0;
    %shiftr 4;
    %load/vec4 v0x56137908b1e0_0;
    %pad/u 8;
    %ix/load 4, 7, 0;
    %flag_set/imm 4, 0;
    %shiftl 4;
    %or;
    %assign/vec4 v0x56137908bcb0_0, 0;
    %jmp T_16.10;
T_16.6 ;
    %load/vec4 v0x56137908b1e0_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_16.11, 8;
    %pushi/vec4 0, 0, 4;
    %assign/vec4 v0x56137908bd80_0, 0;
    %pushi/vec4 0, 0, 2;
    %assign/vec4 v0x56137908bc10_0, 0;
T_16.11 ;
    %jmp T_16.10;
T_16.7 ;
    %pushi/vec4 2, 0, 2;
    %assign/vec4 v0x56137908bc10_0, 0;
    %jmp T_16.10;
T_16.8 ;
    %load/vec4 v0x56137908b1e0_0;
    %assign/vec4 v0x56137908c080_0, 0;
    %pushi/vec4 0, 0, 4;
    %assign/vec4 v0x56137908bd80_0, 0;
    %pushi/vec4 0, 0, 2;
    %assign/vec4 v0x56137908bc10_0, 0;
    %jmp T_16.10;
T_16.10 ;
    %pop/vec4 1;
T_16.4 ;
T_16.1 ;
    %jmp T_16;
    .thread T_16;
    .scope S_0x561379052660;
T_17 ;
    %wait E_0x561379028560;
    %load/vec4 v0x561379060b60_0;
    %nor/r;
    %flag_set/vec4 8;
    %jmp/0xz  T_17.0, 8;
    %pushi/vec4 0, 0, 2;
    %assign/vec4 v0x56137905fe20_0, 0;
    %jmp T_17.1;
T_17.0 ;
    %load/vec4 v0x56137905fe20_0;
    %parti/s 1, 0, 2;
    %concati/vec4 1, 0, 1;
    %assign/vec4 v0x56137905fe20_0, 0;
T_17.1 ;
    %jmp T_17;
    .thread T_17;
    .scope S_0x56137905a4f0;
T_18 ;
    %wait E_0x561379027540;
    %load/vec4 v0x56137908dda0_0;
    %nor/r;
    %flag_set/vec4 8;
    %jmp/0xz  T_18.0, 8;
    %pushi/vec4 0, 0, 4;
    %assign/vec4 v0x56137908e250_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x56137908e0c0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x56137908e5b0_0, 0;
    %pushi/vec4 0, 0, 8;
    %assign/vec4 v0x56137908e470_0, 0;
    %pushi/vec4 0, 0, 3;
    %assign/vec4 v0x56137908d750_0, 0;
    %pushi/vec4 0, 0, 3;
    %assign/vec4 v0x56137908d8d0_0, 0;
    %pushi/vec4 0, 0, 32;
    %assign/vec4 v0x56137908e2f0_0, 0;
    %jmp T_18.1;
T_18.0 ;
    %load/vec4 v0x56137908e250_0;
    %dup/vec4;
    %pushi/vec4 0, 0, 4;
    %cmp/u;
    %jmp/1 T_18.2, 6;
    %dup/vec4;
    %pushi/vec4 1, 0, 4;
    %cmp/u;
    %jmp/1 T_18.3, 6;
    %dup/vec4;
    %pushi/vec4 2, 0, 4;
    %cmp/u;
    %jmp/1 T_18.4, 6;
    %jmp T_18.6;
T_18.2 ;
    %load/vec4 v0x56137908e020_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_18.7, 8;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x56137908e0c0_0, 0;
    %load/vec4 v0x56137908df30_0;
    %parti/s 3, 0, 2;
    %assign/vec4 v0x56137908d750_0, 0;
    %load/vec4 v0x56137908dc40_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_18.9, 8;
    %pushi/vec4 1, 0, 4;
    %assign/vec4 v0x56137908e250_0, 0;
    %jmp T_18.10;
T_18.9 ;
    %pushi/vec4 2, 0, 4;
    %assign/vec4 v0x56137908e250_0, 0;
    %pushi/vec4 0, 0, 32;
    %assign/vec4 v0x56137908e2f0_0, 0;
T_18.10 ;
    %jmp T_18.8;
T_18.7 ;
    %pushi/vec4 0, 0, 4;
    %assign/vec4 v0x56137908e250_0, 0;
T_18.8 ;
    %jmp T_18.6;
T_18.3 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x56137908e0c0_0, 0;
    %load/vec4 v0x56137908d8d0_0;
    %addi 1, 0, 3;
    %assign/vec4 v0x56137908d8d0_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x56137908e5b0_0, 0;
    %load/vec4 v0x56137908d8d0_0;
    %dup/vec4;
    %pushi/vec4 0, 0, 3;
    %cmp/u;
    %jmp/1 T_18.11, 6;
    %dup/vec4;
    %pushi/vec4 1, 0, 3;
    %cmp/u;
    %jmp/1 T_18.12, 6;
    %dup/vec4;
    %pushi/vec4 2, 0, 3;
    %cmp/u;
    %jmp/1 T_18.13, 6;
    %dup/vec4;
    %pushi/vec4 3, 0, 3;
    %cmp/u;
    %jmp/1 T_18.14, 6;
    %jmp T_18.15;
T_18.11 ;
    %load/vec4 v0x56137908d8d0_0;
    %pad/u 5;
    %ix/vec4 4;
    %load/vec4a v0x56137908db80, 4;
    %parti/s 8, 0, 2;
    %assign/vec4 v0x56137908e470_0, 0;
    %jmp T_18.15;
T_18.12 ;
    %load/vec4 v0x56137908d8d0_0;
    %pad/u 5;
    %ix/vec4 4;
    %load/vec4a v0x56137908db80, 4;
    %parti/s 8, 8, 5;
    %assign/vec4 v0x56137908e470_0, 0;
    %jmp T_18.15;
T_18.13 ;
    %load/vec4 v0x56137908d8d0_0;
    %pad/u 5;
    %ix/vec4 4;
    %load/vec4a v0x56137908db80, 4;
    %parti/s 8, 16, 6;
    %assign/vec4 v0x56137908e470_0, 0;
    %jmp T_18.15;
T_18.14 ;
    %load/vec4 v0x56137908d8d0_0;
    %pad/u 5;
    %ix/vec4 4;
    %load/vec4a v0x56137908db80, 4;
    %parti/s 8, 24, 6;
    %assign/vec4 v0x56137908e470_0, 0;
    %jmp T_18.15;
T_18.15 ;
    %pop/vec4 1;
    %load/vec4 v0x56137908d8d0_0;
    %cmpi/e 3, 0, 3;
    %jmp/0xz  T_18.16, 4;
    %pushi/vec4 0, 0, 4;
    %assign/vec4 v0x56137908e250_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x56137908e5b0_0, 0;
    %pushi/vec4 0, 0, 3;
    %assign/vec4 v0x56137908d8d0_0, 0;
    %jmp T_18.17;
T_18.16 ;
    %pushi/vec4 1, 0, 4;
    %assign/vec4 v0x56137908e250_0, 0;
T_18.17 ;
    %jmp T_18.6;
T_18.4 ;
    %load/vec4 v0x56137908d8d0_0;
    %cmpi/ne 3, 0, 3;
    %jmp/0xz  T_18.18, 4;
    %load/vec4 v0x56137908e020_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_18.20, 8;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x56137908e0c0_0, 0;
    %load/vec4 v0x56137908e2f0_0;
    %load/vec4 v0x56137908df30_0;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %ix/getv 5, v0x56137908d8d0_0;
    %shiftl 5;
    %ix/vec4 4;
    %shiftl 4;
    %or;
    %assign/vec4 v0x56137908e2f0_0, 0;
    %load/vec4 v0x56137908d8d0_0;
    %addi 1, 0, 3;
    %assign/vec4 v0x56137908d8d0_0, 0;
    %jmp T_18.21;
T_18.20 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x56137908e0c0_0, 0;
T_18.21 ;
    %pushi/vec4 2, 0, 4;
    %assign/vec4 v0x56137908e250_0, 0;
    %jmp T_18.19;
T_18.18 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x56137908e0c0_0, 0;
    %pushi/vec4 0, 0, 32;
    %assign/vec4 v0x56137908e2f0_0, 0;
    %pushi/vec4 0, 0, 3;
    %assign/vec4 v0x56137908d8d0_0, 0;
    %pushi/vec4 0, 0, 4;
    %assign/vec4 v0x56137908e250_0, 0;
T_18.19 ;
    %jmp T_18.6;
T_18.6 ;
    %pop/vec4 1;
T_18.1 ;
    %jmp T_18;
    .thread T_18;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "uart_regs.v";
    "./uart_core.v";

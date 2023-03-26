#! /usr/bin/vvp
:ivl_version "11.0 (stable)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision - 1;
:vpi_module "/usr/lib/x86_64-linux-gnu/ivl/system.vpi";
:vpi_module "/usr/lib/x86_64-linux-gnu/ivl/vhdl_sys.vpi";
:vpi_module "/usr/lib/x86_64-linux-gnu/ivl/vhdl_textio.vpi";
:vpi_module "/usr/lib/x86_64-linux-gnu/ivl/v2005_math.vpi";
:vpi_module "/usr/lib/x86_64-linux-gnu/ivl/va_math.vpi";
S_0x55c50e4e1f00 .scope module, "uart_core" "uart_core" 2 3;
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
P_0x55c50e4f8760 .param/l "OVERSAMPLE" 0 2 4, +C4<00000000000000000000000000000100>;
P_0x55c50e4f87a0 .param/l "RX_IDLE" 1 2 166, +C4<00000000000000000000000000000000>;
P_0x55c50e4f87e0 .param/l "RX_START" 1 2 167, +C4<00000000000000000000000000000001>;
P_0x55c50e4f8820 .param/l "RX_STOP" 1 2 168, +C4<00000000000000000000000000001010>;
P_0x55c50e4f8860 .param/l "TX_IDLE" 1 2 48, +C4<00000000000000000000000000000000>;
P_0x55c50e4f88a0 .param/l "TX_START" 1 2 49, +C4<00000000000000000000000000000001>;
P_0x55c50e4f88e0 .param/l "TX_STOP" 1 2 50, +C4<00000000000000000000000000001010>;
P_0x55c50e4f8920 .param/l "W_OVER" 1 2 42, +C4<00000000000000000000000000000010>;
o0x7f40286b9068 .functor BUFZ 1, C4<z>; HiZ drive
L_0x55c50e51b2b0 .functor BUFZ 1, o0x7f40286b9068, C4<0>, C4<0>, C4<0>;
o0x7f40286b8f78 .functor BUFZ 8, C4<zzzzzzzz>; HiZ drive
L_0x55c50e50f830 .functor BUFZ 8, o0x7f40286b8f78, C4<00000000>, C4<00000000>, C4<00000000>;
L_0x55c50e510c70 .functor AND 1, L_0x55c50e53c780, v0x55c50e511b50_0, C4<1>, C4<1>;
L_0x55c50e5119f0 .functor OR 1, L_0x55c50e54cad0, L_0x55c50e54ce00, C4<0>, C4<0>;
L_0x55c50e5125e0 .functor AND 1, L_0x55c50e510c70, L_0x55c50e5119f0, C4<1>, C4<1>;
L_0x55c50e54dba0 .functor BUFZ 1, L_0x55c50e53c670, C4<0>, C4<0>, C4<0>;
v0x55c50e539900_0 .net *"_ivl_10", 31 0, L_0x55c50e53c940;  1 drivers
L_0x7f402866f060 .functor BUFT 1, C4<0000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x55c50e539a00_0 .net *"_ivl_13", 27 0, L_0x7f402866f060;  1 drivers
L_0x7f402866f0a8 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x55c50e539ae0_0 .net/2u *"_ivl_14", 31 0, L_0x7f402866f0a8;  1 drivers
v0x55c50e539ba0_0 .net *"_ivl_16", 0 0, L_0x55c50e54cad0;  1 drivers
v0x55c50e539c60_0 .net *"_ivl_18", 31 0, L_0x55c50e54cc40;  1 drivers
L_0x7f402866f0f0 .functor BUFT 1, C4<0000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x55c50e539d40_0 .net *"_ivl_21", 27 0, L_0x7f402866f0f0;  1 drivers
L_0x7f402866f138 .functor BUFT 1, C4<00000000000000000000000000001010>, C4<0>, C4<0>, C4<0>;
v0x55c50e539e20_0 .net/2u *"_ivl_22", 31 0, L_0x7f402866f138;  1 drivers
v0x55c50e539f00_0 .net *"_ivl_24", 0 0, L_0x55c50e54ce00;  1 drivers
v0x55c50e539fc0_0 .net *"_ivl_27", 0 0, L_0x55c50e5119f0;  1 drivers
v0x55c50e53a080_0 .net *"_ivl_30", 31 0, L_0x55c50e54d6c0;  1 drivers
L_0x7f402866f180 .functor BUFT 1, C4<0000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x55c50e53a160_0 .net *"_ivl_33", 27 0, L_0x7f402866f180;  1 drivers
L_0x7f402866f1c8 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x55c50e53a240_0 .net/2u *"_ivl_34", 31 0, L_0x7f402866f1c8;  1 drivers
v0x55c50e53a320_0 .net *"_ivl_38", 31 0, L_0x55c50e54d930;  1 drivers
L_0x7f402866f210 .functor BUFT 1, C4<0000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x55c50e53a400_0 .net *"_ivl_41", 27 0, L_0x7f402866f210;  1 drivers
L_0x7f402866f258 .functor BUFT 1, C4<00000000000000000000000000001001>, C4<0>, C4<0>, C4<0>;
v0x55c50e53a4e0_0 .net/2u *"_ivl_42", 31 0, L_0x7f402866f258;  1 drivers
v0x55c50e53a5c0_0 .net *"_ivl_48", 31 0, L_0x55c50e54dc50;  1 drivers
L_0x7f402866f2a0 .functor BUFT 1, C4<0000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x55c50e53a6a0_0 .net *"_ivl_51", 27 0, L_0x7f402866f2a0;  1 drivers
L_0x7f402866f2e8 .functor BUFT 1, C4<00000000000000000000000000001010>, C4<0>, C4<0>, C4<0>;
v0x55c50e53a890_0 .net/2u *"_ivl_52", 31 0, L_0x7f402866f2e8;  1 drivers
v0x55c50e53a970_0 .net *"_ivl_7", 0 0, L_0x55c50e53c780;  1 drivers
v0x55c50e53aa30_0 .net *"_ivl_9", 0 0, L_0x55c50e510c70;  1 drivers
o0x7f40286b8018 .functor BUFZ 1, C4<z>; HiZ drive
v0x55c50e53aaf0_0 .net "clk", 0 0, o0x7f40286b8018;  0 drivers
v0x55c50e53ab90_0 .net "clk_en", 0 0, v0x55c50e511b50_0;  1 drivers
v0x55c50e53ac30_0 .net "din", 0 0, L_0x55c50e54dba0;  1 drivers
o0x7f40286b80d8 .functor BUFZ 4, C4<zzzz>; HiZ drive
v0x55c50e53acd0_0 .net "div_frac", 3 0, o0x7f40286b80d8;  0 drivers
o0x7f40286b8108 .functor BUFZ 10, C4<zzzzzzzzzz>; HiZ drive
v0x55c50e53adc0_0 .net "div_int", 9 0, o0x7f40286b8108;  0 drivers
o0x7f40286b8318 .functor BUFZ 1, C4<z>; HiZ drive
v0x55c50e53ae90_0 .net "rst_n", 0 0, o0x7f40286b8318;  0 drivers
v0x55c50e53af60_0 .net "rst_n_sync", 0 0, L_0x55c50e53c5a0;  1 drivers
o0x7f40286b83d8 .functor BUFZ 1, C4<z>; HiZ drive
v0x55c50e53b000_0 .net "rx", 0 0, o0x7f40286b83d8;  0 drivers
v0x55c50e53b0d0_0 .var "rx_byte", 7 0;
v0x55c50e53b170_0 .var "rx_over_ctr", 1 0;
v0x55c50e53b230_0 .var "rx_shifter", 7 0;
v0x55c50e53b310_0 .var "rx_state", 3 0;
v0x55c50e53b3f0_0 .net "rx_sync", 0 0, L_0x55c50e53c670;  1 drivers
v0x55c50e53b6d0_0 .net "rx_valid", 0 0, L_0x55c50e54dd50;  1 drivers
v0x55c50e53b770_0 .var "rxfifo_wen", 0 0;
v0x55c50e53b830_0 .var "tx", 0 0;
v0x55c50e53b8f0_0 .net "tx_busy", 0 0, L_0x55c50e54d7f0;  1 drivers
v0x55c50e53b9b0_0 .net "tx_byte", 7 0, o0x7f40286b8f78;  0 drivers
v0x55c50e53ba90_0 .net "tx_done", 0 0, L_0x55c50e54dab0;  1 drivers
v0x55c50e53bb50_0 .net "tx_fifo_empty", 0 0, L_0x55c50e54d620;  1 drivers
v0x55c50e53bc20_0 .net "tx_fifo_full", 0 0, L_0x55c50e54d460;  1 drivers
v0x55c50e53bcf0_0 .net "tx_fifo_lvl", 1 0, v0x55c50e538f80_0;  1 drivers
v0x55c50e53bdc0_0 .net "tx_fifo_rdata", 7 0, L_0x55c50e54d3a0;  1 drivers
v0x55c50e53be90_0 .net "tx_fifo_ren", 0 0, L_0x55c50e5125e0;  1 drivers
v0x55c50e53bf60_0 .net "tx_fifo_wdata", 7 0, L_0x55c50e50f830;  1 drivers
v0x55c50e53c030_0 .net "tx_fifo_wen", 0 0, L_0x55c50e51b2b0;  1 drivers
v0x55c50e53c100_0 .var "tx_over_ctr", 1 0;
v0x55c50e53c1a0_0 .var "tx_shifter", 7 0;
v0x55c50e53c240_0 .var "tx_state", 3 0;
v0x55c50e53c320_0 .net "tx_valid", 0 0, o0x7f40286b9068;  0 drivers
L_0x55c50e53c780 .reduce/nor L_0x55c50e54d620;
L_0x55c50e53c940 .concat [ 4 28 0 0], v0x55c50e53c240_0, L_0x7f402866f060;
L_0x55c50e54cad0 .cmp/eq 32, L_0x55c50e53c940, L_0x7f402866f0a8;
L_0x55c50e54cc40 .concat [ 4 28 0 0], v0x55c50e53c240_0, L_0x7f402866f0f0;
L_0x55c50e54ce00 .cmp/eq 32, L_0x55c50e54cc40, L_0x7f402866f138;
L_0x55c50e54d6c0 .concat [ 4 28 0 0], v0x55c50e53c240_0, L_0x7f402866f180;
L_0x55c50e54d7f0 .cmp/ne 32, L_0x55c50e54d6c0, L_0x7f402866f1c8;
L_0x55c50e54d930 .concat [ 4 28 0 0], v0x55c50e53c240_0, L_0x7f402866f210;
L_0x55c50e54dab0 .cmp/eq 32, L_0x55c50e54d930, L_0x7f402866f258;
L_0x55c50e54dc50 .concat [ 4 28 0 0], v0x55c50e53b310_0, L_0x7f402866f2a0;
L_0x55c50e54dd50 .cmp/eq 32, L_0x55c50e54dc50, L_0x7f402866f2e8;
S_0x55c50e4faa10 .scope module, "inst_clk_div" "clkdiv_frac" 2 57, 2 266 0, S_0x55c50e4e1f00;
 .timescale 0 -1;
    .port_info 0 /INPUT 1 "clk";
    .port_info 1 /INPUT 1 "rst_n";
    .port_info 2 /INPUT 1 "en";
    .port_info 3 /INPUT 10 "div_int";
    .port_info 4 /INPUT 4 "div_frac";
    .port_info 5 /OUTPUT 1 "clk_en";
P_0x55c50e518de0 .param/l "W_DIV_FRAC" 0 2 268, +C4<00000000000000000000000000000100>;
P_0x55c50e518e20 .param/l "W_DIV_INT" 0 2 267, +C4<00000000000000000000000000001010>;
v0x55c50e510e10_0 .net "clk", 0 0, o0x7f40286b8018;  alias, 0 drivers
v0x55c50e511b50_0 .var "clk_en", 0 0;
v0x55c50e511bf0_0 .var "ctr_frac", 3 0;
v0x55c50e512780_0 .var "ctr_int", 9 0;
v0x55c50e4dcc50_0 .net "div_frac", 3 0, o0x7f40286b80d8;  alias, 0 drivers
v0x55c50e4dccf0_0 .net "div_int", 9 0, o0x7f40286b8108;  alias, 0 drivers
L_0x7f402866f018 .functor BUFT 1, C4<1>, C4<0>, C4<0>, C4<0>;
v0x55c50e536fa0_0 .net "en", 0 0, L_0x7f402866f018;  1 drivers
v0x55c50e537060_0 .var "frac_carry", 0 0;
v0x55c50e537120_0 .net "rst_n", 0 0, L_0x55c50e53c5a0;  alias, 1 drivers
E_0x55c50e4febd0/0 .event negedge, v0x55c50e537120_0;
E_0x55c50e4febd0/1 .event posedge, v0x55c50e510e10_0;
E_0x55c50e4febd0 .event/or E_0x55c50e4febd0/0, E_0x55c50e4febd0/1;
S_0x55c50e5372a0 .scope module, "inst_reset_sync" "reset_sync" 2 27, 2 225 0, S_0x55c50e4e1f00;
 .timescale 0 -1;
    .port_info 0 /INPUT 1 "clk";
    .port_info 1 /INPUT 1 "rst_n_in";
    .port_info 2 /OUTPUT 1 "rst_n_out";
P_0x55c50e537450 .param/l "N_CYCLES" 0 2 226, +C4<00000000000000000000000000000010>;
v0x55c50e537580_0 .net "clk", 0 0, o0x7f40286b8018;  alias, 0 drivers
v0x55c50e537640_0 .var "delay", 1 0;
v0x55c50e537720_0 .net "rst_n_in", 0 0, o0x7f40286b8318;  alias, 0 drivers
v0x55c50e5377c0_0 .net "rst_n_out", 0 0, L_0x55c50e53c5a0;  alias, 1 drivers
E_0x55c50e4fdbb0/0 .event negedge, v0x55c50e537720_0;
E_0x55c50e4fdbb0/1 .event posedge, v0x55c50e510e10_0;
E_0x55c50e4fdbb0 .event/or E_0x55c50e4fdbb0/0, E_0x55c50e4fdbb0/1;
L_0x55c50e53c5a0 .part v0x55c50e537640_0, 1, 1;
S_0x55c50e5378f0 .scope module, "inst_sync_rx" "sync_1bit" 2 35, 2 245 0, S_0x55c50e4e1f00;
 .timescale 0 -1;
    .port_info 0 /INPUT 1 "clk";
    .port_info 1 /INPUT 1 "rst_n";
    .port_info 2 /INPUT 1 "i";
    .port_info 3 /OUTPUT 1 "o";
P_0x55c50e537b00 .param/l "N_STAGES" 0 2 246, +C4<00000000000000000000000000000010>;
v0x55c50e537c00_0 .net "clk", 0 0, o0x7f40286b8018;  alias, 0 drivers
v0x55c50e537cf0_0 .net "i", 0 0, o0x7f40286b83d8;  alias, 0 drivers
v0x55c50e537d90_0 .net "o", 0 0, L_0x55c50e53c670;  alias, 1 drivers
v0x55c50e537e30_0 .net "rst_n", 0 0, L_0x55c50e53c5a0;  alias, 1 drivers
v0x55c50e537f20_0 .var "sync_flops", 1 0;
L_0x55c50e53c670 .part v0x55c50e537f20_0, 1, 1;
S_0x55c50e5380f0 .scope module, "inst_tx_fifo" "sync_fifo" 2 79, 2 312 0, S_0x55c50e4e1f00;
 .timescale 0 -1;
    .port_info 0 /INPUT 1 "clk";
    .port_info 1 /INPUT 1 "rst_n";
    .port_info 2 /INPUT 8 "w_data";
    .port_info 3 /INPUT 1 "w_en";
    .port_info 4 /OUTPUT 8 "r_data";
    .port_info 5 /INPUT 1 "r_en";
    .port_info 6 /OUTPUT 1 "full";
    .port_info 7 /OUTPUT 1 "empty";
    .port_info 8 /OUTPUT 2 "level";
P_0x55c50e4ad620 .param/l "DEPTH" 0 2 313, +C4<00000000000000000000000000000010>;
P_0x55c50e4ad660 .param/l "WIDTH" 0 2 314, +C4<00000000000000000000000000001000>;
P_0x55c50e4ad6a0 .param/l "W_LEVEL" 0 2 315, +C4<00000000000000000000000000000010>;
L_0x55c50e4dcb30 .functor AND 1, L_0x55c50e51b2b0, L_0x55c50e54d100, C4<1>, C4<1>;
L_0x55c50e54d2e0 .functor AND 1, L_0x55c50e5125e0, L_0x55c50e54d240, C4<1>, C4<1>;
v0x55c50e539060_0 .array/port v0x55c50e539060, 0;
L_0x55c50e54d3a0 .functor BUFZ 8, v0x55c50e539060_0, C4<00000000>, C4<00000000>, C4<00000000>;
v0x55c50e538a80_0 .net *"_ivl_1", 0 0, L_0x55c50e54d100;  1 drivers
v0x55c50e538b60_0 .net *"_ivl_14", 0 0, L_0x55c50e54d500;  1 drivers
v0x55c50e538c40_0 .net *"_ivl_5", 0 0, L_0x55c50e54d240;  1 drivers
v0x55c50e538d10_0 .net "clk", 0 0, o0x7f40286b8018;  alias, 0 drivers
v0x55c50e538db0_0 .net "empty", 0 0, L_0x55c50e54d620;  alias, 1 drivers
v0x55c50e538ec0_0 .net "full", 0 0, L_0x55c50e54d460;  alias, 1 drivers
v0x55c50e538f80_0 .var "level", 1 0;
v0x55c50e539060 .array "mem", 2 0, 7 0;
v0x55c50e5391a0_0 .net "pop", 0 0, L_0x55c50e54d2e0;  1 drivers
v0x55c50e539260_0 .net "push", 0 0, L_0x55c50e4dcb30;  1 drivers
v0x55c50e539320_0 .net "r_data", 7 0, L_0x55c50e54d3a0;  alias, 1 drivers
v0x55c50e539400_0 .net "r_en", 0 0, L_0x55c50e5125e0;  alias, 1 drivers
v0x55c50e5394c0_0 .net "rst_n", 0 0, L_0x55c50e53c5a0;  alias, 1 drivers
v0x55c50e539560_0 .var "valid", 2 0;
v0x55c50e539640_0 .net "w_data", 7 0, L_0x55c50e50f830;  alias, 1 drivers
v0x55c50e539720_0 .net "w_en", 0 0, L_0x55c50e51b2b0;  alias, 1 drivers
E_0x55c50e51b380 .event posedge, v0x55c50e510e10_0;
E_0x55c50e51b3c0 .event edge, v0x55c50e539640_0;
L_0x55c50e54d100 .reduce/nor L_0x55c50e54d460;
L_0x55c50e54d240 .reduce/nor L_0x55c50e54d620;
L_0x55c50e54d460 .part v0x55c50e539560_0, 1, 1;
L_0x55c50e54d500 .part v0x55c50e539560_0, 0, 1;
L_0x55c50e54d620 .reduce/nor L_0x55c50e54d500;
S_0x55c50e538580 .scope begin, "shift_data" "shift_data" 2 352, 2 352 0, S_0x55c50e5380f0;
 .timescale 0 -1;
v0x55c50e538980_0 .var/i "i", 31 0;
S_0x55c50e538780 .scope begin, "data_stage" "data_stage" 2 354, 2 354 0, S_0x55c50e538580;
 .timescale 0 -1;
    .scope S_0x55c50e5372a0;
T_0 ;
    %wait E_0x55c50e4fdbb0;
    %load/vec4 v0x55c50e537720_0;
    %nor/r;
    %flag_set/vec4 8;
    %jmp/0xz  T_0.0, 8;
    %pushi/vec4 0, 0, 2;
    %assign/vec4 v0x55c50e537640_0, 0;
    %jmp T_0.1;
T_0.0 ;
    %load/vec4 v0x55c50e537640_0;
    %parti/s 1, 0, 2;
    %concati/vec4 1, 0, 1;
    %assign/vec4 v0x55c50e537640_0, 0;
T_0.1 ;
    %jmp T_0;
    .thread T_0;
    .scope S_0x55c50e5378f0;
T_1 ;
    %wait E_0x55c50e4febd0;
    %load/vec4 v0x55c50e537e30_0;
    %nor/r;
    %flag_set/vec4 8;
    %jmp/0xz  T_1.0, 8;
    %pushi/vec4 3, 0, 2;
    %assign/vec4 v0x55c50e537f20_0, 0;
    %jmp T_1.1;
T_1.0 ;
    %load/vec4 v0x55c50e537f20_0;
    %parti/s 1, 0, 2;
    %load/vec4 v0x55c50e537cf0_0;
    %concat/vec4; draw_concat_vec4
    %assign/vec4 v0x55c50e537f20_0, 0;
T_1.1 ;
    %jmp T_1;
    .thread T_1;
    .scope S_0x55c50e4faa10;
T_2 ;
    %wait E_0x55c50e4febd0;
    %load/vec4 v0x55c50e537120_0;
    %nor/r;
    %flag_set/vec4 8;
    %jmp/0xz  T_2.0, 8;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x55c50e511b50_0, 0;
    %pushi/vec4 1, 0, 10;
    %assign/vec4 v0x55c50e512780_0, 0;
    %pushi/vec4 0, 0, 4;
    %assign/vec4 v0x55c50e511bf0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x55c50e537060_0, 0;
    %jmp T_2.1;
T_2.0 ;
    %load/vec4 v0x55c50e536fa0_0;
    %nor/r;
    %flag_set/vec4 8;
    %jmp/0xz  T_2.2, 8;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x55c50e511b50_0, 0;
    %pushi/vec4 1, 0, 10;
    %assign/vec4 v0x55c50e512780_0, 0;
    %pushi/vec4 0, 0, 4;
    %assign/vec4 v0x55c50e511bf0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x55c50e537060_0, 0;
    %jmp T_2.3;
T_2.2 ;
    %load/vec4 v0x55c50e512780_0;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_2.4, 4;
    %load/vec4 v0x55c50e511bf0_0;
    %pad/u 5;
    %load/vec4 v0x55c50e4dcc50_0;
    %pad/u 5;
    %add;
    %split/vec4 4;
    %assign/vec4 v0x55c50e511bf0_0, 0;
    %assign/vec4 v0x55c50e537060_0, 0;
    %load/vec4 v0x55c50e4dccf0_0;
    %load/vec4 v0x55c50e537060_0;
    %pad/u 10;
    %add;
    %assign/vec4 v0x55c50e512780_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x55c50e511b50_0, 0;
    %jmp T_2.5;
T_2.4 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x55c50e511b50_0, 0;
    %load/vec4 v0x55c50e512780_0;
    %subi 1, 0, 10;
    %assign/vec4 v0x55c50e512780_0, 0;
T_2.5 ;
T_2.3 ;
T_2.1 ;
    %jmp T_2;
    .thread T_2;
    .scope S_0x55c50e5380f0;
T_3 ;
    %wait E_0x55c50e4febd0;
    %load/vec4 v0x55c50e5394c0_0;
    %nor/r;
    %flag_set/vec4 8;
    %jmp/0xz  T_3.0, 8;
    %pushi/vec4 0, 0, 3;
    %assign/vec4 v0x55c50e539560_0, 0;
    %jmp T_3.1;
T_3.0 ;
    %load/vec4 v0x55c50e539720_0;
    %flag_set/vec4 8;
    %load/vec4 v0x55c50e539400_0;
    %flag_set/vec4 9;
    %flag_or 9, 8;
    %jmp/0xz  T_3.2, 9;
    %load/vec4 v0x55c50e539560_0;
    %ix/getv 4, v0x55c50e539260_0;
    %shiftl 4;
    %pushi/vec4 0, 0, 1;
    %load/vec4 v0x55c50e539260_0;
    %concat/vec4; draw_concat_vec4
    %pad/u 3;
    %or;
    %ix/getv 4, v0x55c50e5391a0_0;
    %shiftr 4;
    %assign/vec4 v0x55c50e539560_0, 0;
T_3.2 ;
T_3.1 ;
    %jmp T_3;
    .thread T_3;
    .scope S_0x55c50e5380f0;
T_4 ;
    %wait E_0x55c50e51b380;
    %fork t_1, S_0x55c50e538580;
    %jmp t_0;
    .scope S_0x55c50e538580;
t_1 ;
    %pushi/vec4 0, 0, 32;
    %store/vec4 v0x55c50e538980_0, 0, 32;
T_4.0 ;
    %load/vec4 v0x55c50e538980_0;
    %cmpi/s 2, 0, 32;
    %jmp/0xz T_4.1, 5;
    %fork t_3, S_0x55c50e538780;
    %jmp t_2;
    .scope S_0x55c50e538780;
t_3 ;
    %load/vec4 v0x55c50e539400_0;
    %flag_set/vec4 8;
    %load/vec4 v0x55c50e539720_0;
    %load/vec4 v0x55c50e539560_0;
    %load/vec4 v0x55c50e538980_0;
    %part/s 1;
    %nor/r;
    %and;
    %load/vec4 v0x55c50e538980_0;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x55c50e539560_0;
    %load/vec4 v0x55c50e538980_0;
    %addi 1, 0, 32;
    %part/s 1;
    %nor/r;
    %or;
    %and;
    %flag_set/vec4 9;
    %flag_or 9, 8;
    %jmp/0xz  T_4.2, 9;
    %load/vec4 v0x55c50e539560_0;
    %load/vec4 v0x55c50e538980_0;
    %addi 1, 0, 32;
    %part/s 1;
    %flag_set/vec4 8;
    %jmp/0 T_4.4, 8;
    %load/vec4 v0x55c50e538980_0;
    %pad/s 33;
    %addi 1, 0, 33;
    %ix/vec4/s 4;
    %load/vec4a v0x55c50e539060, 4;
    %jmp/1 T_4.5, 8;
T_4.4 ; End of true expr.
    %load/vec4 v0x55c50e539640_0;
    %jmp/0 T_4.5, 8;
 ; End of false expr.
    %blend;
T_4.5;
    %ix/getv/s 3, v0x55c50e538980_0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x55c50e539060, 0, 4;
T_4.2 ;
    %end;
    .scope S_0x55c50e538580;
t_2 %join;
    %load/vec4 v0x55c50e538980_0;
    %addi 1, 0, 32;
    %store/vec4 v0x55c50e538980_0, 0, 32;
    %jmp T_4.0;
T_4.1 ;
    %end;
    .scope S_0x55c50e5380f0;
t_0 %join;
    %jmp T_4;
    .thread T_4;
    .scope S_0x55c50e5380f0;
T_5 ;
    %wait E_0x55c50e51b3c0;
    %load/vec4 v0x55c50e539640_0;
    %ix/load 4, 2, 0;
    %flag_set/imm 4, 0;
    %store/vec4a v0x55c50e539060, 4, 0;
    %jmp T_5;
    .thread T_5, $push;
    .scope S_0x55c50e5380f0;
T_6 ;
    %wait E_0x55c50e4febd0;
    %load/vec4 v0x55c50e5394c0_0;
    %nor/r;
    %flag_set/vec4 8;
    %jmp/0xz  T_6.0, 8;
    %pushi/vec4 0, 0, 2;
    %assign/vec4 v0x55c50e538f80_0, 0;
    %jmp T_6.1;
T_6.0 ;
    %load/vec4 v0x55c50e538f80_0;
    %load/vec4 v0x55c50e539260_0;
    %pad/u 2;
    %add;
    %load/vec4 v0x55c50e5391a0_0;
    %pad/u 2;
    %sub;
    %assign/vec4 v0x55c50e538f80_0, 0;
T_6.1 ;
    %jmp T_6;
    .thread T_6;
    .scope S_0x55c50e5380f0;
T_7 ;
    %wait E_0x55c50e51b380;
    %load/vec4 v0x55c50e539720_0;
    %load/vec4 v0x55c50e538ec0_0;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_7.0, 8;
    %vpi_call 2 381 "$display", $time, ": WARNING %m: push on full" {0 0 0};
T_7.0 ;
    %jmp T_7;
    .thread T_7;
    .scope S_0x55c50e5380f0;
T_8 ;
    %wait E_0x55c50e51b380;
    %load/vec4 v0x55c50e539400_0;
    %load/vec4 v0x55c50e538db0_0;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_8.0, 8;
    %vpi_call 2 382 "$display", $time, ": WARNING %m: pop on empty" {0 0 0};
T_8.0 ;
    %jmp T_8;
    .thread T_8;
    .scope S_0x55c50e4e1f00;
T_9 ;
    %wait E_0x55c50e4febd0;
    %load/vec4 v0x55c50e53af60_0;
    %nor/r;
    %flag_set/vec4 8;
    %jmp/0xz  T_9.0, 8;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x55c50e53b830_0, 0;
    %pushi/vec4 0, 0, 2;
    %assign/vec4 v0x55c50e53c100_0, 0;
    %pushi/vec4 0, 0, 4;
    %assign/vec4 v0x55c50e53c240_0, 0;
    %pushi/vec4 0, 0, 8;
    %assign/vec4 v0x55c50e53c1a0_0, 0;
    %jmp T_9.1;
T_9.0 ;
    %load/vec4 v0x55c50e53ab90_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_9.2, 8;
    %load/vec4 v0x55c50e53c100_0;
    %addi 1, 0, 2;
    %assign/vec4 v0x55c50e53c100_0, 0;
T_9.2 ;
    %load/vec4 v0x55c50e53ab90_0;
    %load/vec4 v0x55c50e53c100_0;
    %nor/r;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_9.4, 8;
    %load/vec4 v0x55c50e53c240_0;
    %addi 1, 0, 4;
    %assign/vec4 v0x55c50e53c240_0, 0;
    %load/vec4 v0x55c50e53c240_0;
    %dup/vec4;
    %pushi/vec4 0, 0, 4;
    %cmp/u;
    %jmp/1 T_9.6, 6;
    %dup/vec4;
    %pushi/vec4 1, 0, 4;
    %cmp/u;
    %jmp/1 T_9.7, 6;
    %dup/vec4;
    %pushi/vec4 10, 0, 4;
    %cmp/u;
    %jmp/1 T_9.8, 6;
    %load/vec4 v0x55c50e53c1a0_0;
    %ix/load 4, 1, 0;
    %flag_set/imm 4, 0;
    %shiftr 4;
    %assign/vec4 v0x55c50e53c1a0_0, 0;
    %load/vec4 v0x55c50e53c240_0;
    %pad/u 32;
    %cmpi/e 9, 0, 32;
    %jmp/0xz  T_9.11, 4;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x55c50e53b830_0, 0;
    %jmp T_9.12;
T_9.11 ;
    %load/vec4 v0x55c50e53c1a0_0;
    %parti/s 1, 0, 2;
    %assign/vec4 v0x55c50e53b830_0, 0;
T_9.12 ;
    %jmp T_9.10;
T_9.6 ;
    %load/vec4 v0x55c50e53bcf0_0;
    %cmpi/e 1, 0, 2;
    %jmp/0xz  T_9.13, 4;
    %load/vec4 v0x55c50e53bdc0_0;
    %assign/vec4 v0x55c50e53c1a0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x55c50e53b830_0, 0;
    %jmp T_9.14;
T_9.13 ;
    %pushi/vec4 0, 0, 2;
    %assign/vec4 v0x55c50e53c100_0, 0;
    %pushi/vec4 0, 0, 4;
    %assign/vec4 v0x55c50e53c240_0, 0;
T_9.14 ;
    %jmp T_9.10;
T_9.7 ;
    %load/vec4 v0x55c50e53c1a0_0;
    %ix/load 4, 1, 0;
    %flag_set/imm 4, 0;
    %shiftr 4;
    %assign/vec4 v0x55c50e53c1a0_0, 0;
    %load/vec4 v0x55c50e53c1a0_0;
    %parti/s 1, 0, 2;
    %assign/vec4 v0x55c50e53b830_0, 0;
    %jmp T_9.10;
T_9.8 ;
    %load/vec4 v0x55c50e53c320_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_9.15, 8;
    %load/vec4 v0x55c50e53b9b0_0;
    %assign/vec4 v0x55c50e53c1a0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x55c50e53b830_0, 0;
    %pushi/vec4 1, 0, 4;
    %assign/vec4 v0x55c50e53c240_0, 0;
    %jmp T_9.16;
T_9.15 ;
    %pushi/vec4 0, 0, 4;
    %assign/vec4 v0x55c50e53c240_0, 0;
    %pushi/vec4 0, 0, 2;
    %assign/vec4 v0x55c50e53c100_0, 0;
T_9.16 ;
    %jmp T_9.10;
T_9.10 ;
    %pop/vec4 1;
T_9.4 ;
T_9.1 ;
    %jmp T_9;
    .thread T_9;
    .scope S_0x55c50e4e1f00;
T_10 ;
    %wait E_0x55c50e4febd0;
    %load/vec4 v0x55c50e53af60_0;
    %nor/r;
    %flag_set/vec4 8;
    %jmp/0xz  T_10.0, 8;
    %pushi/vec4 0, 0, 2;
    %assign/vec4 v0x55c50e53b170_0, 0;
    %pushi/vec4 0, 0, 4;
    %assign/vec4 v0x55c50e53b310_0, 0;
    %pushi/vec4 0, 0, 8;
    %assign/vec4 v0x55c50e53b230_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x55c50e53b770_0, 0;
    %jmp T_10.1;
T_10.0 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x55c50e53b770_0, 0;
    %load/vec4 v0x55c50e53ab90_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_10.2, 8;
    %load/vec4 v0x55c50e53b170_0;
    %addi 1, 0, 2;
    %assign/vec4 v0x55c50e53b170_0, 0;
T_10.2 ;
    %load/vec4 v0x55c50e53ab90_0;
    %load/vec4 v0x55c50e53b170_0;
    %nor/r;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_10.4, 8;
    %load/vec4 v0x55c50e53b310_0;
    %addi 1, 0, 4;
    %assign/vec4 v0x55c50e53b310_0, 0;
    %load/vec4 v0x55c50e53b310_0;
    %dup/vec4;
    %pushi/vec4 0, 0, 4;
    %cmp/u;
    %jmp/1 T_10.6, 6;
    %dup/vec4;
    %pushi/vec4 1, 0, 4;
    %cmp/u;
    %jmp/1 T_10.7, 6;
    %dup/vec4;
    %pushi/vec4 10, 0, 4;
    %cmp/u;
    %jmp/1 T_10.8, 6;
    %load/vec4 v0x55c50e53b230_0;
    %ix/load 4, 1, 0;
    %flag_set/imm 4, 0;
    %shiftr 4;
    %load/vec4 v0x55c50e53ac30_0;
    %pad/u 8;
    %ix/load 4, 7, 0;
    %flag_set/imm 4, 0;
    %shiftl 4;
    %or;
    %assign/vec4 v0x55c50e53b230_0, 0;
    %jmp T_10.10;
T_10.6 ;
    %load/vec4 v0x55c50e53ac30_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_10.11, 8;
    %pushi/vec4 0, 0, 4;
    %assign/vec4 v0x55c50e53b310_0, 0;
    %pushi/vec4 0, 0, 2;
    %assign/vec4 v0x55c50e53b170_0, 0;
T_10.11 ;
    %jmp T_10.10;
T_10.7 ;
    %pushi/vec4 2, 0, 2;
    %assign/vec4 v0x55c50e53b170_0, 0;
    %jmp T_10.10;
T_10.8 ;
    %load/vec4 v0x55c50e53ac30_0;
    %assign/vec4 v0x55c50e53b770_0, 0;
    %pushi/vec4 0, 0, 4;
    %assign/vec4 v0x55c50e53b310_0, 0;
    %pushi/vec4 0, 0, 2;
    %assign/vec4 v0x55c50e53b170_0, 0;
    %jmp T_10.10;
T_10.10 ;
    %pop/vec4 1;
T_10.4 ;
T_10.1 ;
    %jmp T_10;
    .thread T_10;
# The file index is used to find the file name in the following table.
:file_names 3;
    "N/A";
    "<interactive>";
    "uart_core.v";

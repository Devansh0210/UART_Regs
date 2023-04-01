SIM = icarus
TOPLEVEL_LANG = verilog

MODULE = uart_test

COCOTB_LOG_LEVEL = DEBUG

COCOTB_SCHEDULER_DEBUG = 1

COCOTB_RESOLVE_X = ZEROS

TOP_F := uart_regs.v

BUILD := build

VERILATOR_ROOT := /home/devector/Documents/verilator

# VERILOG_SOURCES += $(PWD)/uart_core.v
VERILOG_SOURCES += $(PWD)/uart_regs.v

TOPLEVEL = uart_regs


include $(shell cocotb-config --makefiles)/Makefile.sim


.PHONY: all vclean

veri:
	verilator --trace --Mdir $(BUILD) --cc $(TOP_F) --top-module $(basename $(TOP_F)) --Wno-WIDTHEXPAND --Wno-WIDTHTRUNC
	
vclean:
	rm -rf $(BUILD)
	rm $(wildcard *.vcd)

tb: veri tb.cpp
	# make -C $(BUILD) -f V$(basename $(TOP_F)).mk
	# g++ -I ${VERILATOR_ROOT}/include $(VERILATOR_ROOT)/include/verilated.cpp -I $(BUILD) $(BUILD)/V$(basename $(TOP_F))__ALL.cpp $(BUILD)/V$(basename $(TOP_F)).cpp tb.cpp -o tb
	verilator --trace --Mdir $(BUILD) --cc $(TOP_F) --top-module $(basename $(TOP_F)) --exe tb.cpp --Wno-WIDTHEXPAND --Wno-WIDTHTRUNC
	make -C $(BUILD) -f V$(basename $(TOP_F)).mk V$(basename $(TOP_F))
	./$(BUILD)/V$(TOPLEVEL)


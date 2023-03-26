SIM = icarus
TOPLEVEL_LANG = verilog

MODULE = uart_test

COCOTB_LOG_LEVEL = DEBUG

COCOTB_SCHEDULER_DEBUG = 1

COCOTB_RESOLVE_X = ZEROS

# VERILOG_SOURCES += $(PWD)/uart_core.v
VERILOG_SOURCES += $(PWD)/uart_regs.v

TOPLEVEL = uart_regs


include $(shell cocotb-config --makefiles)/Makefile.sim



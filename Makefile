SIM = icarus
TOPLEVEL_LANG = verilog

VERILOG_SOURCES += $(PWD)/uart_core.v

TOPLEVEL = uart_core

MODULE = uart_test

COCOTB_LOG_LEVEL = DEBUG

COCOTB_SCHEDULER_DEBUG = 1

# COCOTB_HDL_TIMEUNIT = 1s

# COCOTB_HDL_TIMEPRECISION = 100ms

COCOTB_RESOLVE_X = ZEROS

include $(shell cocotb-config --makefiles)/Makefile.sim

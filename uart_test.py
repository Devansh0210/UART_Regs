from cocotb.triggers import RisingEdge, FallingEdge, Edge, Timer
from cocotb.clock import Clock
import cocotb
from dataclasses import dataclass
from collections import deque
from logging import Logger


_log = Logger("cocotb-uart ", level=3)

DIV_INT = 2
DIV_FRAC = 0

DIV_NET = (DIV_INT + DIV_FRAC/2**16)
_val = 0b11110000
clk_freq = 10e6

baud_rate = clk_freq/(2*4*DIV_NET)

baud_t = Timer(1/baud_rate/2, units="sec")

@cocotb.test()
async def uart_test(dut):
    dut._log.info(clk_freq) 
    dut._log.info(_val)
    clk = Clock(dut.clk, 1/clk_freq, units="sec")
    await cocotb.start(clk.start())
    dut.rx.value = 1
    dut.div_int.value = DIV_INT
    dut.div_frac.value = DIV_FRAC
    dut.tx_valid.value = 0
    await RisingEdge(dut.clk)
    dut.rst_n.value = 0
    await RisingEdge(dut.clk)

    dut.rst_n.value = 1

    for i in range(4):
        await FallingEdge(dut.clk)

    dut.tx_valid.value = 1
    dut.tx_byte.value = _val

    await FallingEdge(dut.clk)
    dut.tx_valid.value = 0

    await RisingEdge(dut.tx_busy)
    await baud_t

    for i in range(10):
        if (i == 0):
            assert (dut.tx.value == 0), "Invalid Start Bit"
            dut._log.info("START_BIT")
        elif(i == 9):
            assert (dut.tx.value == 1), "Invalid Stop Bit"
            dut._log.info("STOP_BIT")
        else:
            cur_bit = (_val >> (i-1)) & 1
            assert (dut.tx.value == cur_bit), "Invalid data bit"
            dut._log.info(f"{dut.tx.value}")
        # _val = _val >> 1
        await baud_t
        await baud_t

    await RisingEdge(dut.clk)
    
    




    
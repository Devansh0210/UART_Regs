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

baud_rate = clk_freq/(4*DIV_NET)

baud_t = Timer(1/baud_rate/2, units="sec")


async def test_tx_byte(clk, tx_valid, tx_byte, tx, tx_busy):
    tx_valid.value = 1
    tx_byte.value = _val

    await FallingEdge(clk)
    tx_valid.value = 0

    await RisingEdge(tx_busy)
    await baud_t

    for i in range(10):
        if (i == 0):
            assert (tx.value == 0), "Invalid Start Bit"
            _log.info("START_BIT")
        elif(i == 9):
            assert (tx.value == 1), "Invalid Stop Bit"
            _log.info("STOP_BIT")
        else:
            cur_bit = (_val >> (i-1)) & 1
            assert (tx.value == cur_bit), "Invalid data bit"
            _log.info(f"{tx.value}")
        
        await baud_t
        await baud_t

async def test_rx_byte(rx, val):
    rx.value = 0
    await baud_t
    await baud_t

    for i in range(8):
        rx.value = (val >> i) & 1
        await baud_t
        await baud_t

    rx.value = 1
    await baud_t
    await baud_t

    # await RisingEdge(rx_irq)
    # rxfifo_ren_ext.value = 1
    # await RisingEdge(clk)

    # assert (rx_byte == _val)
    

# @cocotb.test()
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

    # await (test_tx_byte(dut.clk, dut.tx_valid, dut.tx_byte, dut.tx, dut.tx_busy))
    await (test_tx_byte(dut.clk, dut.tx_valid, dut.tx_byte, dut.tx, dut.tx_busy))
    await test_rx_byte(dut.clk, dut.rx_irq, dut.rx, dut.rxfifo_ren_ext, dut.rx_byte)


    await RisingEdge(dut.clk)
    
@cocotb.test()
async def uart_regtest(dut):
    dut._log.info(clk_freq) 
    dut._log.info(_val)
    clk = Clock(dut.clk, 1/clk_freq, units="sec")
    await cocotb.start(clk.start())
    dut.rx.value = 1
    dut.div_int.value = DIV_INT
    dut.div_frac.value = DIV_FRAC
    # dut.tx_valid.value = 0
    await RisingEdge(dut.clk)
    dut.rst_n.value = 0
    await RisingEdge(dut.clk)
    dut.rst_n.value = 1
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)

    await test_rx_byte(dut.rx, 0b10100111)
    # await test_rx_byte(dut.rx, 0b11110000)
    # await test_rx_byte(dut.rx, 0b11110000)
    # await test_rx_byte(dut.rx, 0b00001111)
    # await test_rx_byte(dut.rx, 0b00001111)
    for _ in range(48):
        await baud_t
        await baud_t

    await baud_t
    await baud_t







# @cocotb.test()
# async def uart_test_reg(dut):
#     dut._log.info(clk_freq) 
#     dut._log.info(_val)
#     clk = Clock(dut.clk, 1/clk_freq, units="sec")
#     await cocotb.start(clk.start())
#     dut.rx.value = 1
#     dut.div_int.value = DIV_INT
#     dut.div_frac.value = DIV_FRAC
#     dut.tx_valid.value = 0
#     await RisingEdge(dut.clk)
#     dut.rst_n.value = 0
#     await RisingEdge(dut.clk)

#     dut.rst_n.value = 1

#     for i in range(4):
#         await FallingEdge(dut.clk)

    
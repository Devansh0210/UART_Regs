#include <stdio.h>
#include <string.h>
#include <verilated.h>
#include "Vuart_regs.h"
#include "verilated_vcd_c.h"
#include <sys/socket.h>
#include <arpa/inet.h>
#include <poll.h>

static const int div_int = 2;
static const int clk_div = 8*div_int/2;
static const int div_frac = 0;

static const int buf_size = 4;

struct uart_drv{

    Vuart_regs* dut;
    vluint64_t cyc;
    vluint64_t prev_cyc;
    vluint64_t ticks;
    uint8_t buff[buf_size];
    bool rdy;
    VerilatedVcdC* tracer;



    uart_drv(Vuart_regs* dut_in, vluint64_t cyc_in, VerilatedVcdC* m_trace){
        dut = dut_in;
        dut->clk = 0;
        dut->rx = 1;
        dut->div_int = div_int;
        dut->div_frac = div_frac;
        cyc = cyc_in;
        prev_cyc = cyc_in;
        ticks = cyc_in;
        dut->eval();
        tracer = m_trace;
        // tracer->dump(ticks);
        // ticks++;
        

        rdy = false;
        
        VL_PRINTF("Cycle no : %ld\n", cyc);
        
        for(uint8_t i = 0; i < 4; i++){
            buff[i] = 0;
        }
    }

    void drive_clk(vluint64_t no_cyc, VerilatedVcdC* m_trace){
        for(; cyc < prev_cyc + no_cyc; cyc++){
            dut->clk = 0;
            dut->eval();
            m_trace->dump(ticks);
            ticks++;
            // VL_PRINTF("Cycle no : %ld\n", cyc);

            dut->clk = 1;
            dut->eval();
            m_trace->dump(ticks);
            ticks++;
            // VL_PRINTF("Cycle no : %ld\n", cyc);
        }

        prev_cyc = cyc;

    }

    uint8_t send_data(uint8_t* dat, size_t no_byte){
        for(uint8_t i = 0; i < no_byte; i++){
            VL_PRINTF("BYTE : %d\n", dat[i]);
            for(uint8_t j = 0; j < 10; j++){
                
                if((j != 0) && (j != 9)){
                    VL_PRINTF("BIT %d || j = %d\n", (dat[i] >> (j-1)) & 1, j);
                }

                for(; cyc < prev_cyc + clk_div; cyc++){
                    if(j == 0){
                        dut->clk = 0;
                        dut->rx = 0;
                        
                        dut->eval();
                        tracer->dump(ticks);
                        ticks++;
                        dut->clk = 1;
                        dut->eval();
                        tracer->dump(ticks);
                        ticks++;
                    }

                    else if(j == 9){
                        dut->rx = 1;
                        dut->clk = 0;
                        dut->eval();
                        tracer->dump(ticks);
                        ticks++;

                        dut->clk = 1;
                        dut->eval();
                        tracer->dump(ticks);
                        ticks++;
                    }

                    else{
                        dut->clk = 0;
                        dut->rx = (dat[i] >> (j-1)) & 1;
                        
                        dut->eval();
                        tracer->dump(ticks);
                        ticks++;

                        dut->clk = 1;
                        dut->eval();
                        tracer->dump(ticks);
                        ticks++;
                    }
                }
                prev_cyc = cyc;
            }
        }

        return 1;
    }

};




int main(int argc, char** argv){

    Verilated::commandArgs(argc, argv);

    Vuart_regs* top = new Vuart_regs;
    VerilatedVcdC* m_trace = new VerilatedVcdC;
    Verilated::traceEverOn(true);

    top->trace(m_trace, 5);
    m_trace->open("uart_test.vcd");


    top->rst_n = 0;
    top->rx = 1;
    // top->div_int = div_int;
    // top->div_frac = div_frac;
    
    int cyc = 0;
    for(cyc = 0; cyc < 3; cyc++){
        top->clk = 0;
        
        top->eval();
        m_trace->dump(2*cyc);

        top->clk = 1;
        top->eval();
        m_trace->dump(2*cyc + 1);
    }   

    top->rst_n = 1;
    top->clk = 0;
    top->eval();
    m_trace->dump(2*cyc);

    top->clk = 1;
    top->eval();
    m_trace->dump(2*cyc + 1);
    // VL_PRINTF("Cycle no : %d\n", cyc);

    cyc = 2*cyc + 2;
    // VL_PRINTF("Cycle no : %d\n", cyc);

    uart_drv uart_driver(top, cyc, m_trace);

    uart_driver.drive_clk(15, m_trace);

    // uart_driver.send_data
    uint8_t buff[5];

    buff[0] = 0xa0;
    buff[1] = 0xaa;
    buff[2] = 0xbb;
    buff[3] = 0xcc;
    buff[4] = 0xdd;



    uart_driver.send_data(&buff[0], 5);
    uart_driver.drive_clk(100, m_trace);

    m_trace->close();
    delete top;


}

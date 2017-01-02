/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */


#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"


#include "xparameters.h"
#include "xbram.h"

#include "xstatus.h"

#define MyBRAM_DEVICE_ID        XPAR_BRAM_0_DEVICE_ID
#define MyBRAM_BASE             XPAR_BRAM_0_BASEADDR
#define GPIO_DEVICE_ID      XPAR_XGPIOPS_0_DEVICE_ID

#define printf            xil_printf    /* Smalller foot-print printf */

static XBram MyBRAM_Mem;




#include "xil_cache.h"

/************************** Constant Definitions *****************************/

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#define BRAM_DEVICE_ID        XPAR_BRAM_1_DEVICE_ID


/************************** Variable Definitions *****************************/

/*
 * The following are declared globally so they are zeroed and so they are
 * easily accessible from a debugger
 */
XBram Bram;    /* The Instance of the BRAM Driver */




int main()
{
    int ram_addr = 0x0;
    int read_out =0;
    int read_in[512];
    int DataValue;
    char from_keyboard[10];

    ram_addr = 0x0;
    read_out = 0;


    XBram_Config *MyBRAM_ConfigPtr;
    init_platform();




    MyBRAM_ConfigPtr = XBram_LookupConfig(MyBRAM_DEVICE_ID);
    XBram_CfgInitialize(&MyBRAM_Mem, MyBRAM_ConfigPtr,MyBRAM_ConfigPtr->CtrlBaseAddress);

    print("Hello World\n\r");
    /* Wait for keyboard string */
    scanf("%s",from_keyboard);
    printf("%s\r\n",from_keyboard);




    ram_addr = 0x0;



    for(read_out =0; read_out <511; read_out++)
                    {

                    printf("%d\r\n",XBram_ReadReg(MyBRAM_BASE, ram_addr));
                    ram_addr = ram_addr + 4;

                      }


    cleanup_platform();
    return 0;
}

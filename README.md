# N3Vivado
Vivado project for the TE0722 based N3
to update Git repository:

cd Dropbox/N3workingG
cd TE0722Rebuild/N3Vivado/
git add -A
git commit -m "Comment"
git push

(Enter username grahamnaylorccfe and password)
if you get the error:
fatal: Reference has invalid format: 'refs/remotes/origin/master
then look for conflicting copy files in refs/ and delete them



From within directory
cd Dropbox/N3workingG/TE0722Rebuild/ZynqStuff/


To create bin file:
/opt/Xilinx/SDK/2014.4/bin/bootgen -image N3.bif -w -o BOOT.bin

To program flash:
/opt/Xilinx/SDK/2014.4/bin/zynq_flash -f BOOT.bin -flash_type qspi_single -verify

Git push history:

..
Production version (BOOT_prod2.bin) 2/6/2016
Corrected for Bluetooth volume (AGC - BOOT_prod4.bin GV06)


Switching between Production 1 build and the prototype build design
i) For proto, set f target to 48.5169 in the clock wizard and 49.162 for the production build
ii) Use PrototypeConstraints.xdc for proto and n3_te0722a5_clock.xdc for production (in ~\N3Vivado\TE0722\TE0722.srcs\constrs_1\imports\VivadoProject )


Streaming data from N3 DSP (PL)
uint32 Values2Recover
Bits 15:0 give number of samples to recover
Bits 17:16 give the signal to recover stream of uint32
i) 0 - Recover Filterred (demodulated) signal in lowest 18 bits
ii) 1 - Recover Audio Out to Speaker in bits 15:0 and BTAudio from headset mic in bits 31:16
iii) 2 Recover Amplitude and phase of Start tones
iv) 3 Recover Amplitude and phase of Stop tones

Write using something like
n3z_tonetest_Values2Recover_write(InstancePtr, Values2Recover);



A) To read from the N3 Uart, use eg:


            Value=0;
            	do
            	{
            	while (!XUartPs_IsReceiveData(UART_BASEADDR));

            			RecvChar = XUartPs_ReadReg(UART_BASEADDR,
            						    XUARTPS_FIFO_OFFSET);

            			if (('0' <= RecvChar) && ('9' >= RecvChar)) {
            						/* Convert to digit decimal value */
            						Value = Value*10+RecvChar - '0';
            					}
            	}
            	while (RecvChar!=13); /*until line feed character*/

            	printf("You typed %d \n\r",Value);


B) To write to Uart, use print, printf or xil_printf

C) To Read 32 bit data from PLfifo, use for example:

Initially configure what data values to recover and how many using:
            	n3z_tonetest_values2recover_write(InstancePtr, Value); /*Where Value is Datastream to collect(0-3)*2^16 + No. ov values to collect*/
(having defined:
n3z_tonetest* InstancePtr = malloc(sizeof (n3z_tonetest));
)

Then can stream data to UART using-

    	ReceiveLength=Rx2Uart(&DataFifo);

Where:

int Rx2Uart (XLlFifo *InstancePtr)
{

	int i;
	int Status;
	u32 RxWord;
	static u32 ReceiveLength;

	xil_printf(" Receiving data ....\n\r");
	/* Read Recieve Length */
	ReceiveLength = (XLlFifo_iRxGetLen(InstancePtr))/WORD_SIZE;
	xil_printf("Receive length = %d \n\r", ReceiveLength );
	/* Start Receiving */
	for ( i=0; i < ReceiveLength; i++){
		RxWord = 0;
		RxWord = XLlFifo_RxGetWord(InstancePtr);

		if(XLlFifo_iRxOccupancy(InstancePtr)){
			RxWord = XLlFifo_RxGetWord(InstancePtr);
		}
		xil_printf("%d\n\r", RxWord);
	}

	Status = XLlFifo_IsRxDone(InstancePtr);
	if(Status != TRUE){
		xil_printf("Failing in receive complete ... \r\n");
		return XST_FAILURE;
	}

	return ReceiveLength;		/* Change to return a useful number*/
}


D) To write 32 bit values ( Which Pico/3bits:Instruction/18bits :Addr/11bits) to pico BRAMs, use preprepared 32bit
values seperated by (CR)LF - CR ignored, LF used as de-limiter.
eg:

/*
Now send Pico instructions to Datafifo (not quite 2048 - keep a few spare locations in fifo!??)
*/
for ( i=0; i < 2040; i++) {

         InstructionVal=0;
            	do
            	{
            	while (!XUartPs_IsReceiveData(UART_BASEADDR));

            			RecvChar = XUartPs_ReadReg(UART_BASEADDR,
            						    XUARTPS_FIFO_OFFSET);

            			if (('0' <= RecvChar) && ('9' >= RecvChar)) {
            						/* Convert to digit decimal value */
            						InstructionVal = InstructionVal*10+RecvChar - '0';
            					}
            	}
            	while (RecvChar!=10); /*until line feed character*/
/*
            	xil_printf("You sent %d \n\r",InstructionVal);
*/



          if( XLlFifo_iTxVacancy(&DataFifo) ){
				XLlFifo_TxPutWord(&DataFifo,InstructionVal);
      }
}


E) To write characters to PL:

    Buffer[0]=0x00000047 ;
    Buffer[1]=0x00000056 ;
    Buffer[2]=0x0000000A ;
    Buffer[3]=0x0000000D;

    Status=TxSend(&PSPLFifo, Buffer, 4);

where:
int TxSend(XLlFifo *InstancePtr, u32  *SourceAddr, int no_word)
{

	int i;

	xil_printf(" Transmitting Data ... \r\n");

	/* Filling the buffer with data */
	for (i=0;i<no_word;i++)
		{
			if( XLlFifo_iTxVacancy(InstancePtr) ){
				XLlFifo_TxPutWord(InstancePtr,
					*(SourceAddr+i));
		}

	}

	/* Start Transmission by writing transmission length into the TLR */
	XLlFifo_iTxSetLen(InstancePtr, (no_word * WORD_SIZE));

	/* Check for Transmission completion */
	while( !(XLlFifo_IsTxDone(InstancePtr)) ){

	}

	/* Transmission Complete */
	return XST_SUCCESS;
}


F) To read the response:

            numberofsamples=XLlFifo_RxOccupancy(&PSPLFifo);
            printf("Receive Occupancy is %d\r\n",numberofsamples);


            ReceiveLength = XLlFifo_RxGetLen(&PSPLFifo);
            printf("Receive length is %d\r\n",ReceiveLength);


                print("Now to get PL>PS message \n\r");

                ReceiveLength=RxReceive(&PSPLFifo, Buffer);
                printf("Receive reported length is %d\r\n",ReceiveLength);
                for ( i=0; i < ReceiveLength; i++){
                		xil_printf("%d\r\n",Buffer[i]);
                	}

Where:
int RxReceive (XLlFifo *InstancePtr, u32* DestinationAddr)
{

	int i;
	int Status;
	u32 RxWord;
	static u32 ReceiveLength;

	xil_printf(" Receiving data ....\n\r");
	/* Read Recieve Length */
	ReceiveLength = (XLlFifo_iRxGetLen(InstancePtr))/WORD_SIZE;
	xil_printf("Receive length = %d \n\r", ReceiveLength );
	/* Start Receiving */
	for ( i=0; i < ReceiveLength; i++){
		RxWord = 0;
		RxWord = XLlFifo_RxGetWord(InstancePtr);

		if(XLlFifo_iRxOccupancy(InstancePtr)){
			RxWord = XLlFifo_RxGetWord(InstancePtr);
		}
		*(DestinationAddr+i) = RxWord;
	}

	Status = XLlFifo_IsRxDone(InstancePtr);
	if(Status != TRUE){
		xil_printf("Failing in receive complete ... \r\n");
		return XST_FAILURE;
	}

	return ReceiveLength;		/* Change to return a useful number*/
}




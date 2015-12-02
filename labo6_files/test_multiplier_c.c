#include "xmul.h"
#include "xparameters.h"



/* 	Define the base memory address of the led_controller IP core */
#define MULTIPLICADOR_BASE XPAR_MUL_0_S_AXI_AXILITES_BASEADDR

/* main function */
int main(void){

	XMul multiplicador;
	/* unsigned 32-bit variables  */
	u32 operandoA = 0x00000004;
	u32 operandoB = 0x00000003;
	u32 producto;

	XMul_Initialize(&multiplicador, XPAR_MUL_0_DEVICE_ID);
	//XGpio_Initialize(&dip, XPAR_SWITCHES_DEVICE_ID); // Modify
	XMul_Start(&multiplicador);

	xil_printf("multiplier IP test begin.\r\n");
	xil_printf("--------------------------------------------\r\n\n");

	while(!XMul_IsReady(&multiplicador)){}
	XMul_WriteReg(MULTIPLICADOR_BASE, XMUL_AXILITES_ADDR_A_DATA, operandoA);
	XMul_WriteReg(MULTIPLICADOR_BASE, XMUL_AXILITES_ADDR_B_DATA, operandoB);
	xil_printf("operandoA: 0x%08x\r\n", operandoA);
	xil_printf("operandoB: 0x%08x\r\n", operandoB);
	XMul_Start(&multiplicador);
	while(!XMul_IsDone(&multiplicador)){}
	producto= XMul_ReadReg(MULTIPLICADOR_BASE, XMUL_AXILITES_ADDR_AP_RETURN);
	xil_printf("producto: 0x%08x\r\n", producto);
//	XMul_Release(&multiplicador);
	/* Loop forever */
	while(1){

		}
	return 1;
}





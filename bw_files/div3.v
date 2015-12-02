`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:34:03 10/24/2014 
// Design Name: 
// Module Name:    div3 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module div3(
	input wire [9:0] src,
	output wire [7:0] dst
);

/* Esto divide por 3 numeros en el rango de un byte */
wire [31:0] ret;
assign ret = (src * 15'd21849) >> 16;
assign dst = ret << 24 >> 24;

endmodule

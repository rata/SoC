`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:45:15 10/29/2014 
// Design Name: 
// Module Name:    bwfilter 
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
module bwfilter(
	input [23:0] pixel,
	output [7:0] ret
);

wire [7:0] red;
wire [7:0] green;
wire [7:0] blue;
wire [9:0] sum;

assign red   = (pixel & 24'hFF0000) >> 16;
assign green = (pixel & 24'h00FF00) << 8 >> 16;
assign blue  = (pixel & 24'h0000FF) << 16 >> 16;
assign sum = red + green + blue;

wire [7:0] hack_ret;
div3 div1(.src(sum), .dst(hack_ret));

assign ret = (hack_ret == 0)? 8'h1: hack_ret;

endmodule

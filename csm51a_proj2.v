`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////
// Company: UCLA Henry Samueli School of Engineering and Applied Science
// Engineers: Victor Lai and Dennis Gahm 
// 
// Create Date: 05/08/2015 12:49:32 PM
// Design Name: 
// Module Name: csm51a_proj2
// Project Name: Verilog Lab #2
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////


module csm51a_proj2(
    input x3, input x2, input x1, input x0,
    output a, output b, output c, output d, output e, output f, output g
    );
    
    assign a = (x2 & x0) | x1 | x3 | (~x2 & ~x0);
    assign b = x3 | (x1 & x0) | (~x1 & ~x0) | ~x2;
    assign c = x3 | ~x1 | x0 | x2;
    assign d = (x2 & ~x1 & x0) | (~x2 & ~x0) | x3 | (x1 & ~x0) | (~x2 & x1);
    assign e = (~x2 & ~x0) | (x1 & ~x0);
    assign f = x3 | (x2 & ~x0) | (x2 & ~x1) | (~x1 & ~x0);
    assign g = (x2 & ~x1) | x3 | (~x2 & x1) | (x2 & ~x0);
    
endmodule

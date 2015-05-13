`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////
// Company: UCLA Henry Samueli School of Engineering and Applied Science
// Engineers: Victor Lai and Dennis Gahm
// Student IDs: 404274720 and 704016107
// 
// Create Date: 05/08/2015 01:05:18 PM
// Design Name: 
// Module Name: csm51a_proj2_tb
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
//////////////////////////////////////////////////////////////////////////////

module Top;
reg x3, x2, x1, x0;
wire a, b, c, d, e, f, g;

display_decoder test(x3, x2, x1, x0, a, b, c, d, e, f, g);

initial begin
    
    { x3, x2, x1, x0 } = 0;
    #10
    { x3, x2, x1, x0 } = 1;
    #10
    { x3, x2, x1, x0 } = 2;
    #10
    { x3, x2, x1, x0 } = 3;
    #10
    { x3, x2, x1, x0 } = 4;
    #10
    { x3, x2, x1, x0 } = 5;
    #10
    { x3, x2, x1, x0 } = 6;
    #10
    { x3, x2, x1, x0 } = 7;
    #10
    { x3, x2, x1, x0 } = 8;
    #10
    { x3, x2, x1, x0 } = 9;
    #10
        
    $finish;
end
endmodule

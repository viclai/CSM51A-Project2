`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////
// Company: UCLA Henry Samueli School of Engineering and Applied Science
// Engineers: Victor Lai and Dennis Gahm 
// Student IDs: 404274720 and 704016107
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


module display_decoder(
    input x3, input x2, input x1, input x0,
    output a, output b, output c, output d, output e, output f, output g
    );
    
    //wire a1, a2, a3, a4;
    //nand(a1, x2, x0);
    //nand(a2, x1, x1);
    //nand(a3, x3, x3);
    //nand(a4, ~x2, ~x0);
    //nand(a, a1, a2, a3, a4);
    // Minimal Sum of Products =(x2 & x0) | x1 | x3 | (~x2 & ~x0);
    assign a = ~( ~(x2 & x0) & ~(x1) & ~(x3) & ~(~x2 & ~x0) );
             
    //wire b1, b2, b3, b4;
    //nand(b1, x3, x3);
    //nand(b2, x1, x0);
    //nand(b3, ~x1, ~x0);
    //nand(b4, ~x2, ~x2);
    //nand(b, b1, b2, b3, b4);
    // Minimal Sum of Products = x3 | (x1 & x0) | (~x1 & ~x0) | ~x2;
    assign b = ~( ~(x3) & ~(x1 & x0) & ~(~x1 & ~x0) & ~(~x2) );
    
    //wire c1, c2, c3, c4;
    //nand(c1, x3, x3);
    //nand(c2, ~x1, ~x1);
    //nand(c3, x0, x0);
    //nand(c4, x2, x2);
    //nand(c, c1, c2, c3, c4);
    // Minimal Sum of Products = x3 | ~x1 | x0 | x2;
    assign c = ~( ~(x3) & ~(~x1) & ~(x0) & ~(x2) );
    
    //wire d1, d2, d3, d4, d5;
    //nand(d1, x2, ~x1, x0);
    //nand(d2, ~x2, ~x0);
    //nand(d3, x3, x3);
    //nand(d4, x1, ~x0);
    //nand(d5, ~x2, x1);
    //nand(d, d1, d2, d3, d4, d5);
    // Minimal Sum of Produts = (x2 & ~x1 & x0) | (~x2 & ~x0) | x3 | 
    //                          (x1 & ~x0) | (~x2 & x1);
    assign d = ~( ~(x2 & ~x1 & x0) & ~(~x2 & ~x0) & ~(x3) & ~(x1 & ~x0) & 
               ~(~x2 & x1) );
    
    //wire e1, e2;
    //nand(e1, ~x2, ~x0);
    //nand(e2, x1, ~x0);
    //nand(e, e1, e2);
    // Minimal Sum of Products = (~x2 & ~x0) | (x1 & ~x0);
    assign e = ~( ~(~x2 & ~x0) & ~(x1 & ~x0) );
    
    //wire f1, f2, f3, f4;
    //nand(f1, x3, x3);
    //nand(f2, x2, ~x0);
    //nand(f3, x2, ~x1);
    //nand(f4, ~x1, ~x0);
    //nand(f, f1, f2, f3, f4);
    // Minimal Sum of Products = x3 | (x2 & ~x0) | (x2 & ~x1) | (~x1 & ~x0);
    assign f = ~( ~(x3) & ~(x2 & ~x0) & ~(x2 & ~x1) & ~(~x1 & ~x0) );
    
    //wire g1, g2, g3, g4;
    //nand(g1, x2, ~x1);
    //nand(g2, x3, x3);
    //nand(g3, ~x2, x1);
    //nand(g4, x2, ~x0);
    //nand(g, g1, g2, g3, g4);
    // Minimal Sum of Products = (x2 & ~x1) | x3 | (~x2 & x1) | (x2 & ~x0);
    assign g = ~( ~(x2 & ~x1) & ~(x3) & ~(~x2 & x1) & ~(x2 & ~x0) );
    
endmodule

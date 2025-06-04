`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2025 03:20:31
// Design Name: 
// Module Name: decoder_2x4_beh
// Project Name: 
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
//////////////////////////////////////////////////////////////////////////////////


module decoder_2x4_beh(
    input a, b, e,
    output reg q0, q1, q2, q3
    );
   
    always @(a, b)
    begin
        q0 = ~a & ~b & e;
        q1 = ~a & b & e;
        q2 = a & ~b & e;
        q3 = a & b & e;
    end
endmodule

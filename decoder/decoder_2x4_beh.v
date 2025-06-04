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
    input a, b,
    output reg q0, q1, q2, q3
    );
   
    always @(a, b)
    begin
        q0 = ~a & ~b;
        q1 = ~a & b;
        q2 = a & ~b;
        q3 = a & b;
    end
endmodule

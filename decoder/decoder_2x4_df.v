`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2025 02:43:17
// Design Name: 
// Module Name: decoder_2x4_df
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


module decoder_2x4_df(
    input a, b,
    output q0, q1, q2, q3
    );
    
    assign q0 = ~a & ~b;
    assign q1 = ~a & b;
    assign q2 = a & ~b;
    assign q3 = a & b;
endmodule

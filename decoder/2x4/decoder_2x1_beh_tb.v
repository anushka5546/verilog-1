`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2025 03:29:30
// Design Name: 
// Module Name: decoder_2x4_beh_tb
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


module decoder_2x4_beh_tb(

    );
    
    reg a, b, e;
    wire q0, q1, q2, q3;
    
    decoder_2x4_beh uut (
        .a(a),
        .b(b),
        .e(e),
        .q0(q0),
        .q1(q1),
        .q2(q2),
        .q3(q3)
    );
    
    initial
    begin                   // Don't need this
        #40 $finish;
    end 
    
    initial
    begin
        a = 1'b0;           // q0
        b = 1'b0;
        e = 1'b1;
        #10
        
        a = 1'b1;           // q2
        b = 1'b0;
        e = 1'b1;
        #10
        
        a = 1'b1;           // q3
        b = 1'b1;
        e = 1'b0;
        #10
        
        a = 1'b0;           // q1
        b = 1'b1;
        e = 1'b1;
    end
       
endmodule

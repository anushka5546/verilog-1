`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2025 17:07:04
// Design Name: 
// Module Name: gates_using_2x1_mux_tb
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


module gates_using_2x1_mux_tb(

    );
    
    parameter n = 2;
    reg x, y;
    wire AND, NAND, OR, NOR, na_x;
    
    gates_using_2x1_mux #(.n(n)) uut (
        .x(x),
        .y(y),
        .AND(AND),
        .NAND(NAND),
        .OR(OR),
        .NOR(NOR),
        .na_x(na_x)
    );
    
    initial
    begin
        #20 $finish;
    end
    
    initial
    begin
        x = 1'b0;           // 0
        y = 1'b0;
        #5;
        x = 1'b1;           // 1
        y = 1'b0;
        #5;
        x = 1'b0;           // 2
        y = 1'b1;
        #5;
        x = 1'b1;           // 3
        y = 1'b1;
    end
    
endmodule

`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/08/2019 02:00:20 PM
// Design Name: 
// Module Name: alu_test
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


module alu_test();
    wire [31:0] S;
    wire z, Cout;
    reg [31:0] A, B;
    reg Cin;
    reg [2:0] alu_ops;
    
    alu alu(S, z, Cout, A, B, Cin, alu_ops);
    
    initial
    begin
        #0  Cin = 0;
            A = 6;
            B = 5;
            alu_ops = 0;
        
        #20 alu_ops = 1;
        #20 alu_ops = 2;
        #20 alu_ops = 3;
        #20 alu_ops = 4;
        #20 alu_ops = 5;
        #20 alu_ops = 6;
        #20 alu_ops = 7;
        #20 $finish;
    end
endmodule
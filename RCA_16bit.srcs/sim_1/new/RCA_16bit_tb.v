`timescale 1ns / 1ps

module RCA_16bit_tb();
    reg [15:0] a;
    reg [15:0] b;
    wire [15:0] sum;
    wire co;

    RCA_16bit dut(a, b, sum, co);

    initial begin
        a = 16'b0001000100010011; b = 16'b0001000100011100;
        #5;
        a = 16'b0010001000100011; b = 16'b0010001000101110;
        #5;
        a = 16'b0001000100011011; b = 16'b0011001100111100;
        #5;

        $finish;
    end
endmodule

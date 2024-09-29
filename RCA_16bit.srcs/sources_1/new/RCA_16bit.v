`timescale 1ns / 1ps

module RCA_16bit(
    input [15:0] a, 
    input [15:0] b,
    output [15:0] s,
    output c_out
);
    wire [14:0] c;

    full_adder fa1 (a[0], b[0], 1'b0, s[0], c[0]);
    full_adder fa2 (a[1], b[1], c[0], s[1], c[1]);
    full_adder fa3 (a[2], b[2], c[1], s[2], c[2]);
    full_adder fa4 (a[3], b[3], c[2], s[3], c[3]);
    full_adder fa5 (a[4], b[4], c[3], s[4], c[4]);
    full_adder fa6 (a[5], b[5], c[4], s[5], c[5]);
    full_adder fa7 (a[6], b[6], c[5], s[6], c[6]);
    full_adder fa8 (a[7], b[7], c[6], s[7], c[7]);
    full_adder fa9 (a[8], b[8], c[7], s[8], c[8]);
    full_adder fa10(a[9], b[9], c[8], s[9], c[9]);
    full_adder fa11(a[10], b[10], c[9], s[10], c[10]);
    full_adder fa12(a[11], b[11], c[10], s[11], c[11]);
    full_adder fa13(a[12], b[12], c[11], s[12], c[12]);
    full_adder fa14(a[13], b[13], c[12], s[13], c[13]);
    full_adder fa15(a[14], b[14], c[13], s[14], c[14]);
    full_adder fa16(a[15], b[15], c[14], s[15], c_out);
endmodule

module full_adder(
    input x, y, c_in,
    output sum, carry
);
    wire w1, w2, w3;

    xor (w1, x, y);
    xor (sum, w1, c_in);
    and (w2, c_in, w1);
    and (w3, x, y);
    or (carry, w2, w3);
endmodule

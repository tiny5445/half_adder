`default_nettype none

`timescale 1ns / 1ps

module tb_half_adder;
    reg a;
    reg b;
    wire sum;
    wire carry;

    tt_um_half_adder uut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    initial begin

       // Test case 1
        a = 0; b = 0;
        #10;
        $display("a=%b, b=%b, sum=%b, carry=%b", a, b, sum, carry);

        // Test case 2
        a = 0; b = 1;
        #10;
        $display("a=%b, b=%b, sum=%b, carry=%b", a, b, sum, carry);

        // Test case 3
        a = 1; b = 0;
        #10;
        $display("a=%b, b=%b, sum=%b, carry=%b", a, b, sum, carry);

        // Test case 4
        a = 1; b = 1;
        #10;
        $display("a=%b, b=%b, sum=%b, carry=%b", a, b, sum, carry);

        $finish;
    end
endmodule

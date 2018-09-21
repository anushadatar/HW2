`timescale 1 ns / 1 ps
`include "adder.v"

module testFullAdder();
    reg a, b, carryin;
    wire sum, carryout;

    behavioralFullAdder adder (sum, carryout, a, b, carryin);
//    structuralFullAdder adder (sum, carryout, a, b, carryin);
    initial begin
        // Your test code here
        $dumpfile("adder.vcd");
        $dumpvars();
        $display("Adder Truth Table");
        $display ("a b c | sum c | expected output");
        a=0; b=0; carryin=0; #100 
        $display("%b %b %b | %b   %b | 0 0", a, b, carryin, sum, carryout);
        a=0; b=0; carryin=1; #100
        $display("%b %b %b | %b   %b | 1 0", a, b, carryin, sum, carryout);
        a=0; b=1; carryin=0; #100
        $display("%b %b %b | %b   %b | 1 0", a, b, carryin, sum, carryout);
        a=0; b=1; carryin=1; #100
        $display("%b %b %b | %b   %b | 0 1", a, b, carryin, sum, carryout);
        a=1; b=0; carryin=0; #100
        $display("%b %b %b | %b   %b | 1 0", a, b, carryin, sum, carryout);
        a=1; b=0; carryin=1; #100
        $display("%b %b %b | %b   %b | 0 1", a, b, carryin, sum, carryout);
 	    a=1; b=1; carryin=0; #100
        $display("%b %b %b | %b   %b | 0 1", a, b, carryin, sum, carryout);
	    a=1; b=1; carryin=1; #100
        $display("%b %b %b | %b   %b | 1 1", a, b, carryin, sum, carryout);
	$finish();
    end
endmodule

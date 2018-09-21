// Multiplexer testbench
`timescale 1 ns / 1 ps
`include "multiplexer.v"

module testMultiplexer ();
	reg ad0, ad1;

	reg input0, input1, input2, input3;
	wire output0;
	
	behavioralMultiplexer multiplexer(output0, ad0, ad1, input0, input1, input2, input3);
   // structuralMultiplexer multiplexer(output0, ad0, ad1, input0, input1, input2, input3);

	initial begin
	$dumpfile("multiplexer.vcd");
	$dumpfile("Multiplexer Truth Table");
    $display ("In0 In1 In2 In3 | Ad0 Ad1 | Output | Expected Output");
	input0=0; input1=0; input2=0; input3=0; ad0=0; ad1=0; #100
   	$display ("%b   %b   %b   %b   | %b   %b   | %b      | 0", input0, input1, input2, input3, ad0, ad1, output0);
    input0=1; input1=0; input2=0; input3=0; ad0=0; ad1=0; #100
    $display ("%b   %b   %b   %b   | %b   %b   | %b      | 1", input0, input1, input2, input3, ad0, ad1, output0);
    input0=0; input1=0; input2=0; input3=0; ad0=1; ad1=0; #100
    $display ("%b   %b   %b   %b   | %b   %b   | %b      | 0", input0, input1, input2, input3, ad0, ad1, output0);
    input0=0; input1=1; input2=0; input3=0; ad0=1; ad1=0; #100
    $display ("%b   %b   %b   %b   | %b   %b   | %b      | 1", input0, input1, input2, input3, ad0, ad1, output0);
	input0=0; input1=0; input2=0; input3=0; ad0=0; ad1=1; #100
    $display ("%b   %b   %b   %b   | %b   %b   | %b      | 0", input0, input1, input2, input3, ad0, ad1, output0);
    input0=0; input1=0; input2=1; input3=0; ad0=0; ad1=1; #100
  	$display ("%b   %b   %b   %b   | %b   %b   | %b      | 1", input0, input1, input2, input3, ad0, ad1, output0);
  	input0=0; input1=0; input2=0; input3=0; ad0=1; ad1=1; #100
   	$display ("%b   %b   %b   %b   | %b   %b   | %b      | 0", input0, input1, input2, input3, ad0, ad1, output0);
    input0=0; input1=0; input2=0; input3=1; ad0=1; ad1=1; #100
    $display ("%b   %b   %b   %b   | %b   %b   | %b      | 1", input0, input1, input2, input3, ad0, ad1, output0);
    $finish();
    end
endmodule    

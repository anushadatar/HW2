`define AND and #50
`define OR or #50
`define NOT not #50

module behavioralMultiplexer
(
    output out,
    input address0, address1,
    input in0, in1, in2, in3
);
    // Join single-bit inputs into a bus, use address as index
    wire[3:0] inputs = {in3, in2, in1, in0};
    wire[1:0] address = {address1, address0};
    assign out = inputs[address];
endmodule


module structuralMultiplexer
(
    output out,
    input address0, address1,
    input in0, in1, in2, in3
);
    // n = NOT, and = AND, a0 = address0, a1=address1.
    wire na0, na1, andna0na1, anda0a1, anda0na1, andna0a1, andin0, andin1, andin2, andin3;

    `NOT not0(na0, address0);
    `NOT not1(na1, address1);
    `AND and0(anda0a1, address0, address1);
    `AND and1(anda0na1, address0, na1);
    `AND and2(andna0a1, na0, address1);
    `AND and3(andna0na1, na0, na1);

    `AND and4(andin0, in0, andna0na1);
    `AND and5(andin1, in1, anda0na1);
    `AND and6(andin2, in2, andna0a1);
    `AND and7(andin3, in3, anda0a1);

    `OR or0(out, andin0, andin1, andin2, andin3);

endmodule

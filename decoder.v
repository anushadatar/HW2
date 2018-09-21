// Define operations.
`define AND and #50
`define OR or #50
`define NOT not #50

module behavioralDecoder
(
    output out0, out1, out2, out3,
    input address0, address1,
    input enable
);
    // Uses concatenation and shift operators
    assign {out3,out2,out1,out0}=enable<<{address1,address0};
endmodule


module structuralDecoder
(
    output out0, out1, out2, out3,
    input address0, address1,
    input enable
);
    // e = enabled, n = not, ne = not enabled.
    wire ea0, ea1, na0, na1, nea0, nea1;
    
    // Prep transition steps.
    `AND ande0(ea0, address0, enable);
    `AND ande1(ea1, address1, enable);
    `NOT not0(na0, address0);
    `NOT not1(na1, address1);
    `AND and0(nea0, na0, enable);
    `AND and1(nea1, na1, enable);

    // AND necessary pieces for outputs.
    `AND and2(out0, nea0, nea1);
    `AND and3(out1, ea0, nea1);
    `AND and4(out2, nea0, ea1);
    `AND and5(out3, ea0, ea1);  
endmodule


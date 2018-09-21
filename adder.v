`define AND and #50
`define OR or #50
`define NOT or #50
`define NOR xor #50

module behavioralFullAdder
(
    output sum, 
    output carryout,
    input a, 
    input b, 
    input carryin
);
    // Uses concatenation operator and built-in '+'
    assign {carryout, sum}=a+b+carryin;
endmodule

module structuralFullAdder
(
    output sum, 
    output carryout,
    input a, 
    input b, 
    input carryin
);
    wire xorab, andab, andc;

    `NOR norgate0(xorab, a, b);
    `NOR norgate1(sum, xorab, carryin);

    `AND andgate0(andab, a, b);
    `AND andgate1(andc, xorab, carryin);
    `OR orgate(carryout, andab, andc);
endmodule

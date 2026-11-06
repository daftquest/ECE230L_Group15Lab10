module tff(
    input T,
    input clk,
    output Q,
    output NotQ
);

jkff jkffInst(
    .J(T),
    .K(T),
    .clk(clk),
    .QInitial(Q),
    .NotQ(NotQ)
);

endmodule
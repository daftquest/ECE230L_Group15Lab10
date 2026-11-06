module tff(
    input T,
    input clk,
    output Q,
    output NotQ
);

jkff jkffInst(
    .J('b1),
    .K('b1),
    .clk(clk),
    .JKQ(Q),
    .JKNotQ(NotQ)
);

endmodule
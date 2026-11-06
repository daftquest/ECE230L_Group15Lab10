module top(
    input [3:0] sw,
    input btnC,
    output [5:0] led
);

dff dInst(
    .D(sw[0]),
    .clk(btnC),
    .Q(led[0]),
    .NotQ(led[1])
);

jkff jkInst(
    .J(sw[1]),
    .K(sw[2]),
    .clk(btnC),
    .QInitial(led[2]),
    .NotQ(led[3])
);

tff tInst(
    .T(sw[3]),
    .clk(btnC),
    .Q(led[4]),
    .NotQ(led[5])
);

endmodule
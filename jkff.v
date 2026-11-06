module jkff(
    input J,
    input K,
    input clk,
    output QInitial,
    output NotQ
);

assign Din = (~K & QInitial) | (J & NotQ);

dff dinst(
    .D(Din),
    .clk(clk),
    .Q(QInitial),
    .NotQ(NotQ)
);

endmodule



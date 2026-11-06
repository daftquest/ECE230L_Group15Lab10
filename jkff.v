module jkff(
    input J,
    input K,
    input clk,
    output reg JKQ,
    output reg JKNotQ
);

reg Q;
reg NotQ;
reg QInitial;

initial begin
    Q <= 'b0;
    QInitial <= 'b0;
    NotQ <= 'b0;
end

always @(posedge clk) begin
    Q <= QInitial;
    NotQ <= ~Q;
    JKQ <= Q;
    JKNotQ <= NotQ;
end

d_latch dinst(
    .D((~K && Q) + (J && NotQ)),
    .E(clk),
    .Q(QInitial),
    .NotQ(NotQ)
);

endmodule



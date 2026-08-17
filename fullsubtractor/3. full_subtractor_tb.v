`timescale 1ns/1ps

module full_subtractor_tb;

reg A;
reg B;
reg Bin;
wire Difference;
wire Bout;

full_subtractor uut (
    .A(A),
    .B(B),
    .Bin(Bin),
    .Difference(Difference),
    .Bout(Bout)
);

initial begin

    $dumpfile("full_subtractor.vcd");
    $dumpvars(0, full_subtractor_tb);

    $monitor("A=%b B=%b Bin=%b | Difference=%b Bout=%b",
             A, B, Bin, Difference, Bout);

    // Test 1
    A = 0; B = 0; Bin = 0;
    #10;

    // Test 2
    A = 0; B = 0; Bin = 1;
    #10;

    // Test 3
    A = 0; B = 1; Bin = 0;
    #10;

    // Test 4
    A = 0; B = 1; Bin = 1;
    #10;

    // Test 5
    A = 1; B = 0; Bin = 0;
    #10;

    // Test 6
    A = 1; B = 0; Bin = 1;
    #10;

    // Test 7
    A = 1; B = 1; Bin = 0;
    #10;

    // Test 8
    A = 1; B = 1; Bin = 1;
    #10;

    $finish;
end

endmodule
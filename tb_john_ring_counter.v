module tb_john_ring_counter;

reg clk;
reg rst;
reg en1;
reg en2;
wire [3:0] qout1;
wire [3:0] qout2;
john_ring_counter utt (
    .clk(clk),
    .rst(rst),
    .en1(en1),
    .en2(en2),
    .qout1(qout1),
    .qout2(qout2)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    rst = 1;
    en1 = 0;
     rst = 1;
    en2 = 0;
    #10 rst = 0;
    #5 en1 = 1;
    #20 en1 = 0;
    #20;
    #5 en2 = 1;
    #20 en2= 0;
    #20;

    $finish;
end

initial begin
    $monitor("Time: %0t | clk = %b | rst = %b | en1 = %b | en2 = %b| qout1 = %b| qout2 = %b", 
             $time, clk, rst, en1,en2, qout1,qout2);
end

endmodule


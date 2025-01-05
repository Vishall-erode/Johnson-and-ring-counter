module john_ring_counter (
input clk,input rst,input en1,
input en2,
output reg [3:0] qout1,
output reg [3:0] qout2);

always@(posedge clk or posedge rst )  begin
  if (rst) begin 
   qout1 <= 4'b0000;
   qout2 <= 4'b1010;
   end
else if(en1) begin // john
  qout1 [2:0]<= qout1 [3:1];
  qout1 [3]<= ~qout1 [0];
end 
else if(en2) begin // john
  qout2 [3:1]<= qout2 [2:0];
  qout2 [0]<= qout2 [3];
//assign qout2 = qout2 >>1 ;
  
end 
 end
endmodule

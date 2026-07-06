module counter(
 input clk,
 input rst,
 output reg  [5:0]counter,
 output reg  [5:0]counter1,
 output reg  [4:0]counter2
 );

 always@(posedge clk )    // Second 
 begin
    if(rst)
       counter <= 6'b0;
    else if(counter == 6'd59)
       counter <= 3'b0;
    else 
       counter <= counter + 1'b1;
 end 

 always@(posedge clk)        // Minute 
 begin 
    if(rst)
        counter1 <= 6'b0; 
    else if(counter1 == 6'd59)
        counter1 <= 6'b0;
    else if(counter==59)
        counter1 <= counter1 +1'b1;
 end 

 always@(posedge clk)        // hour 
 begin 
    if(rst)
       counter2 <= 5'b0;
    else if(counter2 == 5'd24) 
       counter2 <= 5'b0;
    else if(counter1 == 59)
       counter2 <= counter2 +1'b1;
 end 
endmodule
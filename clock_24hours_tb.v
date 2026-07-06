module clock_24hours_tb();
reg clk;
reg rst;
wire [5:0]counter;
wire [5:0]counter1;
wire [4:0]counter2;

clock_24hours uut(
    clk,rst,counter,counter1,counter2
);
initial clk=0;
always #5 clk=~clk;

initial 
begin
    rst=1;
   
    #10;
    rst=0; 
    #100000;
    $finish;
end 

initial 
begin
    $monitor("Time = %0t rst=%b counter = %d counter1 =%d counter2=%d", $time,rst,counter,counter1,counter2); 
end 
// initial 
// begin 
// $monitor("Time=%0t counter1=%0d flag=%b flag1=%b counter2=%0d",
//          $time, counter1, flag, flag1, counter2);
// end 
initial
begin
    $dumpfile("naveen.vcd");
    $dumpvars(0,clock_24hours_tb); 
end 
endmodule 
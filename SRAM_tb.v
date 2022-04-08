module SRAM_tb();
// Inputs

 reg [7:0] dataIn;

 reg [7:0] Addr;

 reg CS;

 reg WE;

 reg RD;

 reg Clk;


 // Outputs

 wire [7:0] dataOut;


 // Instantiate the Unit Under Test (UUT)

SRAM uut (.dataIn(dataIn),.dataOut(dataOut),.Addr(Addr),.CS(CS),.WE(WE),.RD(RD),.Clk(Clk));


 initial begin

  // Initialize Inputs

  dataIn  = 8'h0;

  Addr  = 8'h0;

  CS  = 1'b0;

  WE  = 1'b0;

  RD  = 1'b0;

  Clk  = 1'b0;


  // Wait 100 ns for global reset to finish

  #100;

       

  // Add stimulus here

  dataIn  = 8'h0;

  Addr  = 8'h0;

  CS  = 1'b1;

  WE  = 1'b1;

  RD  = 1'b0;

  #20;

  dataIn  = 8'h0;

  Addr  = 8'h0;

  #20;

  dataIn  = 8'h1;

  Addr  = 8'h1;

  #20;

  dataIn  = 8'h10;

  Addr  = 8'h2;

  #20;

  dataIn  = 8'h6;

  Addr  = 8'h3;

  #20;

  dataIn  = 8'h12;

  Addr  = 8'h4;

  #40;

  Addr  = 8'h0;

  WE  = 1'b0;

  RD  = 1'b1;

  #20;

  Addr   = 8'h1;

  #20;

  Addr   = 8'h2;

  #20;

  Addr   = 8'h3;

  #20;

  Addr   = 8'h4;

 end

   

 always #10 Clk = ~Clk;

 


endmodule


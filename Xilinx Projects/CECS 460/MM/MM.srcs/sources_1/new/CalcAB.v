`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Creator Name: Kuldeep Gohil 
// Create Date: 04/24/2021 04:20:20 AM
// Module Name: CalcAB
// Project Name: midterm Project
// Class: CECS 460
// Target Devices: NEXYS 4 DDR
//
// 
//////////////////////////////////////////////////////////////////////////////////


module CalcAB(clk, reset, SW, LED, AMatrixIn, BMatrixIn, C00, C01, C02, 
                                                         C10, C11, C12, 
                                                         C20, C21, C22); 

input clk, reset;
input [5:0] SW;
input       [287:0]   AMatrixIn, BMatrixIn; 

output  reg  [15:0] LED;
output reg [31:0] C00, C01, C02, 
                  C10, C11, C12, 
                  C20, C21, C22;

always @(posedge reset, posedge clk) begin 
    if(reset) begin
        LED <= 16'b0;
    end
    else begin
 //Each Spot in Matrix C is calculated
 
    C00 <= ((AMatrixIn[287:256]*BMatrixIn[287:256]) + (AMatrixIn[255:224]*BMatrixIn[191:160]) + (AMatrixIn[223:192]*BMatrixIn[95:64]));
    C01 <= ((AMatrixIn[287:256]*BMatrixIn[255:224]) + (AMatrixIn[255:224]*BMatrixIn[159:128]) + (AMatrixIn[223:192]*BMatrixIn[63:32]));
    C02 <= ((AMatrixIn[287:256]*BMatrixIn[223:192]) + (AMatrixIn[255:224]*BMatrixIn[127:96])  + (AMatrixIn[223:192]*BMatrixIn[31:0]));    
    C10 <= ((AMatrixIn[191:160]*BMatrixIn[287:256]) + (AMatrixIn[159:128]*BMatrixIn[191:160]) + (AMatrixIn[127:96]*BMatrixIn[95:64]));
    C11 <= ((AMatrixIn[191:160]*BMatrixIn[255:224]) + (AMatrixIn[159:128]*BMatrixIn[159:128]) + (AMatrixIn[127:96]*BMatrixIn[63:32]));
    C12 <= ((AMatrixIn[191:160]*BMatrixIn[223:192]) + (AMatrixIn[159:128]*BMatrixIn[127:96])  + (AMatrixIn[127:96]*BMatrixIn[31:0]));
    C20 <= ((AMatrixIn[95:64]*BMatrixIn[287:256]) + (AMatrixIn[63:32]*BMatrixIn[191:160]) + (AMatrixIn[31:0]*BMatrixIn[95:64]));
    C21 <= ((AMatrixIn[95:64]*BMatrixIn[255:224]) + (AMatrixIn[63:32]*BMatrixIn[159:128]) + (AMatrixIn[31:0]*BMatrixIn[63:32]));
    C22 <= ((AMatrixIn[95:64]*BMatrixIn[223:192]) + (AMatrixIn[63:32]*BMatrixIn[127:96])  + (AMatrixIn[31:0]*BMatrixIn[31:0]));
    
    //Will Show Matrix A on LED 
    
    if (SW[1:0] == 2'b01) begin 
        if (SW[5:2] == 4'b0000) begin 
            LED = AMatrixIn[287:256]; 
            end 
        else if(SW[5:2] == 4'b0001)begin
            LED = AMatrixIn[255:224]; 
            end
        else if(SW[5:2] == 4'b0010)begin
            LED = AMatrixIn[223:192];
            end    
        else if(SW[5:2] == 4'b0011)begin
            LED = AMatrixIn[191:160];   
            end  
        else if(SW[5:2] == 4'b0100)begin
            LED = AMatrixIn[159:128];     
            end
        else if(SW[5:2] == 4'b0101)begin
            LED = AMatrixIn[127:96];     
            end
        else if(SW[5:2] == 4'b0110)begin
            LED = AMatrixIn[95:64];   
            end
        else if(SW[5:2] == 4'b0111)begin
            LED = AMatrixIn[63:32];  
            end    
        else if(SW[5:2] == 4'b1000)begin
            LED = AMatrixIn[31:0];
            end
        end
        
    //Will Show Matrix B on LED
     
    else if (SW[1:0] == 2'b10)begin
        if (SW[5:2] == 4'b0000) begin 
            LED = BMatrixIn[287:256]; 
            end 
        else if(SW[5:2] == 4'b0001)begin
            LED = BMatrixIn[255:224]; 
            end
        else if(SW[5:2] == 4'b0010)begin
            LED = BMatrixIn[223:192];
            end    
        else if(SW[5:2] == 4'b0011)begin
            LED = BMatrixIn[191:160];   
            end  
        else if(SW[5:2] == 4'b0100)begin
            LED = BMatrixIn[159:128];     
            end
        else if(SW[5:2] == 4'b0101)begin
            LED = BMatrixIn[127:96];     
            end
        else if(SW[5:2] == 4'b0110)begin
            LED = BMatrixIn[95:64];   
            end
        else if(SW[5:2] == 4'b0111)begin
            LED = BMatrixIn[63:32];  
            end    
        else if(SW[5:2] == 4'b1000)begin
            LED = BMatrixIn[31:0];
            end
        end   
    
    //Will Show Matrix C on LED
    
    else if (SW[1:0] == 2'b11)begin
      if (SW[5:2] == 4'b0000) begin 
            LED = C00; 
            end 
        else if(SW[5:2] == 4'b0001)begin
            LED = C01; 
            end
        else if(SW[5:2] == 4'b0010)begin
            LED = C02;
            end    
        else if(SW[5:2] == 4'b0011)begin
            LED = C10;   
            end  
        else if(SW[5:2] == 4'b0100)begin
            LED = C11;     
            end
        else if(SW[5:2] == 4'b0101)begin
            LED = C12;     
            end
        else if(SW[5:2] == 4'b0110)begin
            LED = C20;   
            end
        else if(SW[5:2] == 4'b0111)begin
            LED = C21;  
            end    
        else if(SW[5:2] == 4'b1000)begin
            LED = C22;
            end
        end 
        
    else if(SW[1:0] == 2'b00) begin 
        LED = 0;
        end
     
end
end
endmodule

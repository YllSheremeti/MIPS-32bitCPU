`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/06/2022 11:28:30 AM
// Design Name: 
// Module Name: RegisterFile
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module RegisterFile(
input wire[4:0] RS,
input wire[4:0] RT,
input wire[4:0] RD,
input wire[31:0] WriteData,
input wire RegWrite,
input wire Clock,
output wire[31:0] ReadRS,
output wire[31:0] ReadRT
    );
    
reg[31:0] Registers[31:0];

//Reseto te gjithe regjistrat ne 0
integer i;
initial 
begin
for(i=0;i<32;i=i+1)
   Registers[i] <= 32'd0; 
end

//Shkruaj ne regjiter
always @(posedge Clock)
begin
Registers[RD] <= WriteData;
end

//lexo regjistrat ReadData1, ReadData2
assign ReadRS = Registers[RS];
assign ReadRT = Registers[RT];


endmodule

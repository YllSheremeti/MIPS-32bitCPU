`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/06/2022 11:50:52 AM
// Design Name: 
// Module Name: InstructionMemory
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


module InstructionMemory(
input wire[31:0] PCAddress,
output wire[31:0] Instruction);

reg[7:0] instrMem[63:0];

initial
$readmemb("instructionMemory.mem", instrMem);

assign Instruction[31:24] = instrMem[PCAddress];
assign Instruction[23:16] = instrMem[PCAddress + 32'd1];
assign Instruction[15:8] = instrMem[PCAddress + 32'd2];
assign Instruction[7:0] = instrMem[PCAddress + 32'd3];


endmodule

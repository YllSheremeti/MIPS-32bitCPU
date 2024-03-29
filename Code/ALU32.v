`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2022 05:25:23 PM
// Design Name: 
// Module Name: ALU32
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


module ALU32(
    input [31:0] A,
    input [31:0] B,
    input AInvert,
    input BNegate,
    input [1:0] Op,
    output Zero,
    output [31:0] Result,
    output Overflow,
    output CarryOut
    );
    
    wire [30:0] COUT;
    //LIDH 32 ALU 1-biteshe
    ALU1 ALU0(A[0], B[0], BNegate, AInvert, BNegate, Result[31], Op, Result[0], COUT[0]);
    ALU1 ALU1(A[1], B[1], COUT[0], AInvert, BNegate, 0, Op, Result[1], COUT[1]);
    ALU1 ALU2(A[2], B[2], COUT[1], AInvert, BNegate, 0, Op, Result[2], COUT[2]);
	ALU1 ALU3(A[3], B[3], COUT[2], AInvert, BNegate, 0, Op, Result[3], COUT[3]);
    ALU1 ALU4(A[4], B[4], COUT[3], AInvert, BNegate, 0, Op, Result[4], COUT[4]);
    ALU1 ALU5(A[5], B[5], COUT[4], AInvert, BNegate, 0, Op, Result[5], COUT[5]);
    ALU1 ALU6(A[6], B[6], COUT[5], AInvert, BNegate, 0, Op, Result[6], COUT[6]);
    ALU1 ALU7(A[7], B[7], COUT[6], AInvert, BNegate, 0, Op, Result[7], COUT[7]);
    ALU1 ALU8(A[8], B[8], COUT[7], AInvert, BNegate, 0, Op, Result[8], COUT[8]);
    ALU1 ALU9(A[9], B[9], COUT[8], AInvert, BNegate, 0, Op, Result[9], COUT[9]);
    ALU1 ALU10(A[10], B[10], COUT[9], AInvert, BNegate, 0, Op, Result[10], COUT[10]);
    ALU1 ALU11(A[11], B[11], COUT[10], AInvert, BNegate, 0, Op, Result[11], COUT[11]);
    ALU1 ALU12(A[12], B[12], COUT[11], AInvert, BNegate, 0, Op, Result[12], COUT[12]);
    ALU1 ALU13(A[13], B[13], COUT[12], AInvert, BNegate, 0, Op, Result[13], COUT[13]);
    ALU1 ALU14(A[14], B[14], COUT[13], AInvert, BNegate, 0, Op, Result[14], COUT[14]);
    ALU1 ALU15(A[15], B[15], COUT[14], AInvert, BNegate, 0, Op, Result[15], COUT[15]);
    ALU1 ALU16(A[16], B[16], COUT[15], AInvert, BNegate, 0, Op, Result[16], COUT[16]);
    ALU1 ALU17(A[17], B[17], COUT[16], AInvert, BNegate, 0, Op, Result[17], COUT[17]);
    ALU1 ALU18(A[18], B[18], COUT[17], AInvert, BNegate, 0, Op, Result[18], COUT[18]);
    ALU1 ALU19(A[19], B[19], COUT[18], AInvert, BNegate, 0, Op, Result[19], COUT[19]);
    ALU1 ALU20(A[20], B[20], COUT[19], AInvert, BNegate, 0, Op, Result[20], COUT[20]);
    ALU1 ALU21(A[21], B[21], COUT[20], AInvert, BNegate, 0, Op, Result[21], COUT[21]);
    ALU1 ALU22(A[22], B[22], COUT[21], AInvert, BNegate, 0, Op, Result[22], COUT[22]);
    ALU1 ALU23(A[23], B[23], COUT[22], AInvert, BNegate, 0, Op, Result[23], COUT[23]);
    ALU1 ALU24(A[24], B[24], COUT[23], AInvert, BNegate, 0, Op, Result[24], COUT[24]);
    ALU1 ALU25(A[25], B[25], COUT[24], AInvert, BNegate, 0, Op, Result[25], COUT[25]);
    ALU1 ALU26(A[26], B[26], COUT[25], AInvert, BNegate, 0, Op, Result[26], COUT[26]);
    ALU1 ALU27(A[27], B[27], COUT[26], AInvert, BNegate, 0, Op, Result[27], COUT[27]);
    ALU1 ALU28(A[28], B[28], COUT[27], AInvert, BNegate, 0, Op, Result[28], COUT[28]);
    ALU1 ALU29(A[29], B[29], COUT[28], AInvert, BNegate, 0, Op, Result[29], COUT[29]);    
    ALU1 ALU30(A[30], B[30], COUT[29], AInvert, BNegate, 0, Op, Result[30], COUT[30]);
    ALU1 ALU31(A[31], B[31], COUT[30], AInvert, BNegate, 0, Op, Result[31], CarryOut);
    
assign Zero = ~(Result[0] | Result[1] | 
                Result[2] | Result[3] | 
                Result[4] | Result[5] | 
                Result[6] | Result[7] | 
                Result[8] | Result[9] | 
                Result[10] | Result[11] | 
                Result[12] | Result[13] | 
                Result[14] | Result[15] | 
                Result[16] | Result[17] | 
                Result[18] | Result[19] | 
                Result[20] | Result[21] | 
                Result[22] | Result[23] | 
                Result[24] | Result[25] | 
                Result[26] | Result[27] | 
                Result[28] | Result[29] | 
                Result[30] |  Result[31]); 
                    
    assign Overflow = COUT[30] ^ CarryOut;
    
    
endmodule

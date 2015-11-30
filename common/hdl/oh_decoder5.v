
// #
// # This block converts encoded 5 bits
// # into their decoded form of 32 bits
// # In addition to the five bits encoded
// # input, the block gets enable signal
// # which results in all zeros on the
// # output if disabled.
// #

module oh_decoder5 (/*AUTOARG*/
   // Outputs
   dec_out,
   // Inputs
   enc_in, enc_val
   );

   input [5:0]   enc_in;
   input 	 enc_val;
   output [31:0] dec_out;

   reg [31:0] 	 dec_out;

   always @ (*)
     begin
	casez ({enc_val,enc_in[4:0]})
	  6'b1_00000 : dec_out[31:0] = 32'b00000000000000000000000000000001;
	  6'b1_00001 : dec_out[31:0] = 32'b00000000000000000000000000000010;
	  6'b1_00010 : dec_out[31:0] = 32'b00000000000000000000000000000100;
	  6'b1_00011 : dec_out[31:0] = 32'b00000000000000000000000000001000;
	  6'b1_00100 : dec_out[31:0] = 32'b00000000000000000000000000010000;
	  6'b1_00101 : dec_out[31:0] = 32'b00000000000000000000000000100000;
	  6'b1_00110 : dec_out[31:0] = 32'b00000000000000000000000001000000;
	  6'b1_00111 : dec_out[31:0] = 32'b00000000000000000000000010000000;
	  6'b1_01000 : dec_out[31:0] = 32'b00000000000000000000000100000000;
	  6'b1_01001 : dec_out[31:0] = 32'b00000000000000000000001000000000;
	  6'b1_01010 : dec_out[31:0] = 32'b00000000000000000000010000000000;
	  6'b1_01011 : dec_out[31:0] = 32'b00000000000000000000100000000000;
	  6'b1_01100 : dec_out[31:0] = 32'b00000000000000000001000000000000;
	  6'b1_01101 : dec_out[31:0] = 32'b00000000000000000010000000000000;
	  6'b1_01110 : dec_out[31:0] = 32'b00000000000000000100000000000000;
	  6'b1_01111 : dec_out[31:0] = 32'b00000000000000001000000000000000;
	  6'b1_10000 : dec_out[31:0] = 32'b00000000000000010000000000000000;
	  6'b1_10001 : dec_out[31:0] = 32'b00000000000000100000000000000000;
	  6'b1_10010 : dec_out[31:0] = 32'b00000000000001000000000000000000;
	  6'b1_10011 : dec_out[31:0] = 32'b00000000000010000000000000000000;
	  6'b1_10100 : dec_out[31:0] = 32'b00000000000100000000000000000000;
	  6'b1_10101 : dec_out[31:0] = 32'b00000000001000000000000000000000;
	  6'b1_10110 : dec_out[31:0] = 32'b00000000010000000000000000000000;
	  6'b1_10111 : dec_out[31:0] = 32'b00000000100000000000000000000000;
	  6'b1_11000 : dec_out[31:0] = 32'b00000001000000000000000000000000;
	  6'b1_11001 : dec_out[31:0] = 32'b00000010000000000000000000000000;
	  6'b1_11010 : dec_out[31:0] = 32'b00000100000000000000000000000000;
	  6'b1_11011 : dec_out[31:0] = 32'b00001000000000000000000000000000;
	  6'b1_11100 : dec_out[31:0] = 32'b00010000000000000000000000000000;
	  6'b1_11101 : dec_out[31:0] = 32'b00100000000000000000000000000000;
	  6'b1_11110 : dec_out[31:0] = 32'b01000000000000000000000000000000;
	  6'b1_11111 : dec_out[31:0] = 32'b10000000000000000000000000000000;
	  default    : dec_out[31:0] = 32'b00000000000000000000000000000000;
	endcase // casez ({enc_val,enc_in[4:0]})
     end // always @ (*)


endmodule // oh_decoder5


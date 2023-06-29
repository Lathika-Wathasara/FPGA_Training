// https://www.irjmets.com/uploadedfiles/paper/volume3/issue_5_may_2021/9932/1628083399.pdf
// https://youtu.be/OlMYiGm_WX4

module seven_segment(
input wire [3:0] in,
output reg [6:0] seg_out);

initial begin
	#10
	seg_out = 7'b0000000;
end

always @ (in) begin
	case (in)
		4'h0: begin	// show 0
			seg_out = 7'b1000000; 
		end
		4'h1: begin // show 1
			seg_out = 7'b1111001; 
		end
		4'h2: begin // show 2
			seg_out = 7'b0100100;	
		end
		4'h3: begin	// show 3
			seg_out = 7'b0110000; 
		end
		4'h4: begin	// show 4
			seg_out = 7'b0011001; 
		end
		4'h5: begin	// show 5
			seg_out = 7'b0010010; 
		end
		4'h6: begin	// show 6
			seg_out = 7'b0000010; 
		end
		4'h7: begin	// show 7
			seg_out = 7'b1111000; 
		end
		4'h8: begin	// show 8
			seg_out = 7'b0000000; 
		end
		4'h9: begin	// show 9
			seg_out = 7'b0010000; 
		end
		default : begin // off if nothing happens
			seg_out = 7'b111111;
		end
	endcase
end
endmodule

module Seven_seg(
	input wire [7:0] sw,
	output reg [13:0] LED
);

	seven_segment sv_1(sw[3:0], LED[6:0]);
	seven_segment sv_2(sw[7:4], LED[13:7]);

endmodule


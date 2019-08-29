module mandelbrot_iterator
(
    input  logic clk,
    input  logic [9:0]  pix_x,
    input  logic [9:0]  pix_y,
    input  logic signed [26:0] X,
    input  logic signed [26:0] Y,
	 input  logic [9:0]  iter_max,
    output logic [9:0]  plot_x,
    output logic [9:0]  plot_y,
    output logic [9:0]  iterations,
    output logic ready,
    output logic plot_go
);

logic signed [2:0][26:0] Xc_pipe_reg;
logic signed [2:0][26:0] Yc_pipe_reg;
logic signed [2:0][ 9:0] pix_x_pipe_reg;
logic signed [2:0][ 9:0] pix_y_pipe_reg;
logic signed [2:0][ 9:0] iter_pipe_reg;

logic signed [26:0] TempX;
logic signed [26:0] TempY;

logic signed [26:0] X_reg;
logic signed [26:0] Y_reg;
logic signed [26:0] Xc_reg;
logic signed [26:0] Yc_reg;
logic signed [26:0] X_next;
logic signed [26:0] Y_next;

logic signed [53:0] XX_wire;
logic signed [53:0] YY_wire;
logic signed [53:0] XY_wire;
logic signed [26:0] XX_reg;
logic signed [26:0] XY_reg;
logic signed [26:0] YY_reg;

logic signed [26:0] XXpYY_wire;
logic signed [26:0] XXmYY_wire;
logic signed [26:0] XYpXY_wire;
logic signed [26:0] XXpYY_reg;
logic signed [26:0] XXmYY_reg;
logic signed [26:0] XYpXY_reg;

logic [ 9:0] pix_x_reg;
logic [ 9:0] pix_y_reg;
logic [ 9:0] iter_reg;
logic [ 9:0] iter_next;

logic need_iteration;
logic overflow;
logic overflow_reg;
logic div1, div2, div3, div4, div5, div6, div7;

always_ff @( posedge clk )
begin
    if( need_iteration == 1)
    begin
        X_reg       <=  X_next;
        Y_reg       <=  Y_next;
        Xc_reg      <=  Xc_pipe_reg[2];
        Yc_reg      <=  Yc_pipe_reg[2];
        pix_x_reg   <=  pix_x_pipe_reg[2];
        pix_y_reg   <=  pix_y_pipe_reg[2];
        iter_reg    <=  iter_next;
    end
    else
    begin
        X_reg       <=  0;
        Y_reg       <=  0;
        Xc_reg      <=  X;
        Yc_reg      <=  Y;
        pix_x_reg   <=  pix_x;
        pix_y_reg   <=  pix_y;
        iter_reg    <=  0;
    end   
end

assign ready = ~(need_iteration);

always_ff @( posedge clk )
begin
    Xc_pipe_reg[0:0]     <=  {/*Xc_pipe_reg[3:0],*/  Xc_reg    };
    Yc_pipe_reg[0:0]     <=  {/*Yc_pipe_reg[3:0],*/  Yc_reg    };
    pix_x_pipe_reg[0:0]  <=  {/*pix_x_pipe_reg[3:0],*/ pix_x_reg  };
    pix_y_pipe_reg[0:0]  <=  {/*pix_y_pipe_reg[3:0],*/ pix_y_reg  };
    iter_pipe_reg[0:0]   <=  {/*iter_pipe_reg[3:0],*/ iter_reg  };
end

signed_mult_two_input XX_mult
(
    .clock(clk),
    .dataa(X_reg),
    .datab(X_reg),
    .result(XX_wire)
);

signed_mult_two_input YY_mult
(
    .clock(clk),
    .dataa(Y_reg),
    .datab(Y_reg),
    .result(YY_wire)
);

signed_mult_two_input XY_mult
(
    .clock(clk),
    .dataa(X_reg),
    .datab(Y_reg),
    .result(XY_wire)
);

always_ff @( posedge clk )
begin
    Xc_pipe_reg[1]      <=  Xc_pipe_reg[0];
    Yc_pipe_reg[1]      <=  Yc_pipe_reg[0];
    pix_x_pipe_reg[1]   <=  pix_x_pipe_reg[0];
    pix_y_pipe_reg[1]   <=  pix_y_pipe_reg[0];
    iter_pipe_reg[1]    <=  iter_pipe_reg[0];
end

always_ff @( posedge clk )
begin
    XX_reg = {XX_wire[53], XX_wire[48:23]};
    XY_reg = {XY_wire[53], XY_wire[48:23]};
    YY_reg = {YY_wire[53], YY_wire[48:23]};
end

adder XX_YY_plus
(
    .add_sub(1'b1),
    .dataa(XX_reg),
    .datab(YY_reg),
    .overflow(overflow),
    .result(XXpYY_wire)
);

adder XX_YY_minus
(
    .add_sub(1'b0),
    .dataa(XX_reg),
    .datab(YY_reg),
    .overflow(),
    .result(XXmYY_wire)
);

adder XY_XY_plus
(
    .add_sub(1'b1),
    .dataa(XY_reg),
    .datab(XY_reg),
    .overflow(),
    .result(XYpXY_wire)
);

always_ff @( posedge clk )
begin
    Xc_pipe_reg[2]      <=  Xc_pipe_reg[1];
    Yc_pipe_reg[2]      <=  Yc_pipe_reg[1];
    pix_x_pipe_reg[2]   <=  pix_x_pipe_reg[1];
    pix_y_pipe_reg[2]   <=  pix_y_pipe_reg[1];
    iter_pipe_reg[2]    <=  iter_pipe_reg[1];
end

always_ff @( posedge clk )
begin
    XXpYY_reg      <=  XXpYY_wire;
    XXmYY_reg      <=  XXmYY_wire;
    XYpXY_reg      <=  XYpXY_wire;
    overflow_reg   <=  overflow;  
end

always @ (overflow_reg or iter_pipe_reg[2] or XXpYY_reg)
begin
    need_iteration = 0;
    plot_go        = 0;
	 div1 = 0;
	 div2 = 0;
	 div3 = 0;
	 div4 = 0;
	 div5 = 0;
	 div6 = 0;
	 div7 = 0;

    if(overflow_reg == 1 || iter_pipe_reg[2] == iter_max || XXpYY_reg > (4<<23) || X_next > (2<<23) || X_next < (-2<<23) || Y_next > (2<<23) || Y_next < (-2<<23))
        plot_go = 1;
	 else if((TempY > (-4465809)) && (TempY < 4290443) && (TempX > (-4174657)) && (TempX < 2205391))
	 begin
	     plot_go = 1;
		  div1 = 1;
	 end
	 else if((TempY > (-1313558)) && (TempY < 1348342) && (TempX > (-9806425)) && (TempX < -6813317))
	 begin
	     plot_go = 1;
		  div2 = 1;
	 end
	 else if((TempY > (-2259233)) && (TempY < 2294017) && (TempX > (-5749976)) && (TempX < -4174656))
	 begin
	     plot_go = 1;
		  div3 = 1;
	 end
	 else if((TempY > (-5026208)) && (TempY < -4115558) && (TempX > (-2993166)) && (TempX < 826985))
	 begin
	     plot_go = 1;
		  div4 = 1;
	 end
	 else if((TempY > (4290442)) && (TempY < 5096017) && (TempX > (-2993166)) && (TempX < 826985))
	 begin
	     plot_go = 1;
		  div5 = 1;
	 end
	 else if((TempY > (-3029783)) && (TempY < -613058) && (TempX > (2205390)) && (TempX < 2874901))
	 begin
	     plot_go = 1;
		  div6 = 1;
	 end
	 else if((TempY > (717892)) && (TempY < 3099592) && (TempX > (2205390)) && (TempX < 2874901))
	 begin
	     plot_go = 1;
		  div7 = 1;
	 end
    else
        need_iteration = 1;
end

always @ (*)
begin
	X_next     = XXmYY_reg + Xc_pipe_reg[2];
	Y_next     = XYpXY_reg + Yc_pipe_reg[2];
	TempX      = Xc_pipe_reg[2];
	TempY      = Yc_pipe_reg[2];
	iter_next  = iter_pipe_reg[2] + 1;

	plot_x     = pix_x_pipe_reg[2];
	plot_y     = pix_y_pipe_reg[2];
	if(div1 == 0 && div2 == 0 && div3 == 0 && div4 == 0 && div5 == 0 && div6 == 0 && div7 == 0)
		iterations = iter_pipe_reg[2];
	else
		iterations = iter_max;
end

endmodule




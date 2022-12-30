
/*Produced by NSL Core(version=20210228), IP ARCH, Inc. Fri Apr 29 13:49:47 2022
 Licensed to :EVALUATION USER*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module DE10 ( p_reset , m_clock , VGA_R , VGA_B , VGA_G , VGA_VS , VGA_HS , HEX0 );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  output [3:0] VGA_R;
  wire [3:0] VGA_R;
  output [3:0] VGA_B;
  wire [3:0] VGA_B;
  output [3:0] VGA_G;
  wire [3:0] VGA_G;
  output VGA_VS;
  wire VGA_VS;
  output VGA_HS;
  wire VGA_HS;
  output [7:0] HEX0;
  wire [7:0] HEX0;
  reg vga_clock;
  reg [31:0] count;
  reg [9:0] hs_cnt;
  reg [9:0] vs_cnt;
  reg i_vs;
  reg i_hs;
  reg i_hdisp;
  reg i_vdisp;
  reg [7:0] first;
  wire h_count;
  wire v_count;
  reg [7:0] encode [0:15];
  reg [2:0] RGB;
  wire _net_0;
  wire [3:0] _net_1;
  wire [7:0] _net_2;
  wire [7:0] _net_3;
  wire _net_4;
  wire _net_5;
  wire _net_6;
  wire _net_7;
  wire _net_8;
  wire _net_9;
  wire _net_10;
  wire _net_11;
  wire _net_12;
  wire _net_13;
  wire _net_14;


// synthesis translate_off
// synopsys translate_off
always @(posedge h_count)
  begin
#1 if (h_count===1'bx)
 begin
$display("Warning: control hazard(DE10:h_count) at %d",$time);
 end
#1 if ((((vga_clock != 1'b0))===1'bx) || (1'b1)===1'bx) $display("hazard ((vga_clock != 1'b0) || 1'b1) line 42 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  h_count = (vga_clock != 1'b0);

// synthesis translate_off
// synopsys translate_off
always @(posedge v_count)
  begin
#1 if (v_count===1'bx)
 begin
$display("Warning: control hazard(DE10:v_count) at %d",$time);
 end
#1 if ((((h_count&_net_5))===1'bx) || (1'b1)===1'bx) $display("hazard ((h_count&_net_5) || 1'b1) line 48 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  v_count = (h_count&_net_5);
   assign  _net_0 = (i_hdisp|i_vdisp);
   assign  _net_1 = (_net_2[3:0]);
   assign  _net_2 = first;
   assign  _net_3 = (encode[_net_1]);
   assign  _net_4 = (count==32'b00000010111110101111000010000000);
   assign  _net_5 = 
// synthesis translate_off
// synopsys translate_off
(h_count)? 
// synthesis translate_on
// synopsys translate_on
((h_count)?(hs_cnt==10'b1100011111):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_6 = 
// synthesis translate_off
// synopsys translate_off
(h_count)? 
// synthesis translate_on
// synopsys translate_on
((h_count)?(hs_cnt==10'b0000000111):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_7 = 
// synthesis translate_off
// synopsys translate_off
(h_count)? 
// synthesis translate_on
// synopsys translate_on
((h_count)?(hs_cnt==10'b1011110111):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_8 = 
// synthesis translate_off
// synopsys translate_off
(h_count)? 
// synthesis translate_on
// synopsys translate_on
((h_count)?(hs_cnt==10'b1010010111):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_9 = 
// synthesis translate_off
// synopsys translate_off
(h_count)? 
// synthesis translate_on
// synopsys translate_on
((h_count)?(hs_cnt==10'b1010000111):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_10 = 
// synthesis translate_off
// synopsys translate_off
(v_count)? 
// synthesis translate_on
// synopsys translate_on
((v_count)?(vs_cnt==10'b1000001100):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_11 = 
// synthesis translate_off
// synopsys translate_off
(v_count)? 
// synthesis translate_on
// synopsys translate_on
((v_count)?(vs_cnt==10'b1000001100):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_12 = 
// synthesis translate_off
// synopsys translate_off
(v_count)? 
// synthesis translate_on
// synopsys translate_on
((v_count)?(vs_cnt==10'b0111101011):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_13 = 
// synthesis translate_off
// synopsys translate_off
(v_count)? 
// synthesis translate_on
// synopsys translate_on
((v_count)?(vs_cnt==10'b0111101001):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_14 = 
// synthesis translate_off
// synopsys translate_off
(v_count)? 
// synthesis translate_on
// synopsys translate_on
((v_count)?(vs_cnt==10'b0111011111):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or negedge p_reset)
  begin
if (((~_net_0)&_net_0))
 begin $display("Warning: assign collision(DE10:VGA_R) at %d",$time);
if ((~_net_0)) $display("assert ((~_net_0)) line 27 at %d\n",$time);
if (_net_0) $display("assert (_net_0) line 23 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  VGA_R = 
// synthesis translate_off
// synopsys translate_off
(((~_net_0)&_net_0))? 4'bx :(((~_net_0)|_net_0))? 
// synthesis translate_on
// synopsys translate_on
(((~_net_0))?4'b1111:4'b0)|
    ((_net_0)?4'b0000:4'b0)
// synthesis translate_off
// synopsys translate_off
:4'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or negedge p_reset)
  begin
if (((~_net_0)&_net_0))
 begin $display("Warning: assign collision(DE10:VGA_B) at %d",$time);
if ((~_net_0)) $display("assert ((~_net_0)) line 29 at %d\n",$time);
if (_net_0) $display("assert (_net_0) line 25 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  VGA_B = 
// synthesis translate_off
// synopsys translate_off
(((~_net_0)&_net_0))? 4'bx :(((~_net_0)|_net_0))? 
// synthesis translate_on
// synopsys translate_on
(((~_net_0))?4'b1111:4'b0)|
    ((_net_0)?4'b0000:4'b0)
// synthesis translate_off
// synopsys translate_off
:4'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or negedge p_reset)
  begin
if (((~_net_0)&_net_0))
 begin $display("Warning: assign collision(DE10:VGA_G) at %d",$time);
if ((~_net_0)) $display("assert ((~_net_0)) line 28 at %d\n",$time);
if (_net_0) $display("assert (_net_0) line 24 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  VGA_G = 
// synthesis translate_off
// synopsys translate_off
(((~_net_0)&_net_0))? 4'bx :(((~_net_0)|_net_0))? 
// synthesis translate_on
// synopsys translate_on
(((~_net_0))?4'b1111:4'b0)|
    ((_net_0)?4'b0000:4'b0)
// synthesis translate_off
// synopsys translate_off
:4'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  VGA_VS = (~i_vs);
   assign  VGA_HS = (~i_hs);
   assign  HEX0 = (~_net_3);
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     vga_clock <= 1'b0;
else   vga_clock <= (~vga_clock);
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     count <= 32'b00000000000000000000000000000000;
else 
// synthesis translate_off
// synopsys translate_off
if (((~_net_4)&_net_4))   count <= 32'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((~_net_4))
      count <= (count+32'b00000000000000000000000000000001);
else if (_net_4)
      count <= 32'b00000000000000000000000000000000;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((~_net_4)|_net_4)==1'b1) ||
 (((~_net_4)|_net_4)==1'b0) ) begin
 if (((~_net_4)&_net_4))
 begin $display("Warning: assign collision(DE10:count) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(DE10:count) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     hs_cnt <= 10'b0000000000;
else 
// synthesis translate_off
// synopsys translate_off
if (((h_count&(~_net_5))&(h_count&_net_5)))   hs_cnt <= 10'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((h_count&(~_net_5)))
      hs_cnt <= (hs_cnt+10'b0000000001);
else if ((h_count&_net_5))
      hs_cnt <= 10'b0000000000;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((h_count&(~_net_5))|(h_count&_net_5))==1'b1) ||
 (((h_count&(~_net_5))|(h_count&_net_5))==1'b0) ) begin
 if (((h_count&(~_net_5))&(h_count&_net_5)))
 begin $display("Warning: assign collision(DE10:hs_cnt) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(DE10:hs_cnt) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     vs_cnt <= 10'b0000000000;
else 
// synthesis translate_off
// synopsys translate_off
if (((v_count&(~_net_10))&(v_count&_net_10)))   vs_cnt <= 10'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((v_count&(~_net_10)))
      vs_cnt <= (vs_cnt+10'b0000000001);
else if ((v_count&_net_10))
      vs_cnt <= 10'b0000000000;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((v_count&(~_net_10))|(v_count&_net_10))==1'b1) ||
 (((v_count&(~_net_10))|(v_count&_net_10))==1'b0) ) begin
 if (((v_count&(~_net_10))&(v_count&_net_10)))
 begin $display("Warning: assign collision(DE10:vs_cnt) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(DE10:vs_cnt) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     i_vs <= 1'b0;
else 
// synthesis translate_off
// synopsys translate_off
if (((v_count&_net_13)&(v_count&_net_12)))   i_vs <= 1'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((v_count&_net_13))
      i_vs <= 1'b1;
else if ((v_count&_net_12))
      i_vs <= 1'b0;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((v_count&_net_13)|(v_count&_net_12))==1'b1) ||
 (((v_count&_net_13)|(v_count&_net_12))==1'b0) ) begin
 if (((v_count&_net_13)&(v_count&_net_12)))
 begin $display("Warning: assign collision(DE10:i_vs) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(DE10:i_vs) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     i_hs <= 1'b0;
else 
// synthesis translate_off
// synopsys translate_off
if (((h_count&_net_8)&(h_count&_net_7)))   i_hs <= 1'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((h_count&_net_8))
      i_hs <= 1'b1;
else if ((h_count&_net_7))
      i_hs <= 1'b0;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((h_count&_net_8)|(h_count&_net_7))==1'b1) ||
 (((h_count&_net_8)|(h_count&_net_7))==1'b0) ) begin
 if (((h_count&_net_8)&(h_count&_net_7)))
 begin $display("Warning: assign collision(DE10:i_hs) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(DE10:i_hs) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     i_hdisp <= 1'b0;
else 
// synthesis translate_off
// synopsys translate_off
if (((h_count&_net_9)&(h_count&_net_6)))   i_hdisp <= 1'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((h_count&_net_9))
      i_hdisp <= 1'b1;
else if ((h_count&_net_6))
      i_hdisp <= 1'b0;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((h_count&_net_9)|(h_count&_net_6))==1'b1) ||
 (((h_count&_net_9)|(h_count&_net_6))==1'b0) ) begin
 if (((h_count&_net_9)&(h_count&_net_6)))
 begin $display("Warning: assign collision(DE10:i_hdisp) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(DE10:i_hdisp) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     i_vdisp <= 1'b0;
else 
// synthesis translate_off
// synopsys translate_off
if (((v_count&_net_14)&(v_count&_net_11)))   i_vdisp <= 1'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((v_count&_net_14))
      i_vdisp <= 1'b1;
else if ((v_count&_net_11))
      i_vdisp <= 1'b0;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((v_count&_net_14)|(v_count&_net_11))==1'b1) ||
 (((v_count&_net_14)|(v_count&_net_11))==1'b0) ) begin
 if (((v_count&_net_14)&(v_count&_net_11)))
 begin $display("Warning: assign collision(DE10:i_vdisp) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(DE10:i_vdisp) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     first <= 8'b00000000;
else if (_net_4)
      first <= (first+8'b00000001);
end
initial begin
    encode[0] = 8'b00111111;
    encode[1] = 8'b00000110;
    encode[2] = 8'b01011011;
    encode[3] = 8'b01001111;
    encode[4] = 8'b01100110;
    encode[5] = 8'b01101101;
    encode[6] = 8'b01111101;
    encode[7] = 8'b00100111;
    encode[8] = 8'b01111111;
    encode[9] = 8'b01101111;
    encode[10] = 8'b01110111;
    encode[11] = 8'b01111100;
    encode[12] = 8'b00111001;
    encode[13] = 8'b01011110;
    encode[14] = 8'b01111001;
    encode[15] = 8'b01110001;
end
endmodule

/*Produced by NSL Core(version=20210228), IP ARCH, Inc. Fri Apr 29 13:49:47 2022
 Licensed to :EVALUATION USER*/

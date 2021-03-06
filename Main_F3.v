//`include"Key_Proc.v"
//`include"Shape_Pulse.v"
//`include"Tripledebounce.v"
module Main_F3 (input wire sysclk,
input wire Bt_Next,
input wire Bt_Pre,
input wire Bt_Auto,
input wire Enable_F3,
output wire Pulse_X,
output wire Pulse_Y);

wire [3:0] Enable_SW;

Key_Proc Key_Process(.sysclk(sysclk),.Bt_Next(Bt_Next&Enable_F3),.Bt_Pre(Bt_Pre&Enable_F3),
.Bt_Auto(Bt_Auto&Enable_F3),.Enable_SW(Enable_SW));


Shape_Pulse Pulse_Shaping (.sysclk(sysclk),.Enable_SW(Enable_SW),.Pulse_X(Pulse_X),
.Pulse_Y(Pulse_Y));

endmodule
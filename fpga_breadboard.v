// Michael Ford

// 9 FEB 2023

// FPGA Breadboard assignment: control the operation of two LEDs with pushbuttons, each button and LED combination working independently.

module FPGA_Breadboard (red, green, pushb1, pushb2);
input pushb1; // pushbutton1 -- press = 0, release = 1
input pushb2; // pushbutton2 -- press = 0, release = 1
output red; // on when pushb1 == 0 (pressed), off when pushb1 == 1 (released)
output green; // on when pushb2 == 0 (pressed), off when pushb2 == 1 (released)
reg red, green;


always @ (pushb1) begin
if (pushb1 == 0) begin // turn on red light
red <= 1;
end // pushb1 == 0
else begin 
red <= 0;
end //else
end

always @ (pushb2) begin 
if (pushb2 == 0) begin // turn on green light
green <= 1;
end // pushb2 == 0
else begin 
green <= 0;
end // else 
end
endmodule
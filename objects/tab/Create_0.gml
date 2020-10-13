/// @description Insert description here
// You can write your code in this editor

index = 0;
index = board.i_am_tab;
board.i_am_tab++;

active = true;
depth = -11;
if index != 0 {
	active = false;
	depth = -10;
}
target_list = board.waiting;
str = "To DO";

if index == 1 {
	target_list = board.active;
	str = "Doing";
}
if index == 2 {
	target_list = board.complete;
	str = "Complete";
}
	
image_speed=0;
image_index=active;
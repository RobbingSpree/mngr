/// @description Insert description here
// You can write your code in this editor

index = 0;
index = hires_board.i_am_tab;
hires_board.i_am_tab++;

active = true;
depth = -11;
if index != 0 {
	active = false;
	depth = -10;
}
target_list = hires_board.list;
str = "Avalibe Units";

if index == 1 {
	target_list = roster.list;
	str = "Roster";
}
	
image_speed=0;
image_index=active;
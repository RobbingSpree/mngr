/// @description Insert description here
// You can write your code in this editor

with (tab_hires)
{
	active = false;
	image_index=active;
	depth = -10;
}

active = true;
image_index=active;
depth = -11;
hires_board.target_list = target_list;
var size = ds_list_size(hires_board.target_list);
if hires_board.focus > size	
	hires_board.focus = size;
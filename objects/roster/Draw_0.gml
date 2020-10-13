/// @description Insert description here
// You can write your code in this editor

//debug
/*
var height = ds_list_size(list);
for (var i=0; i<height; i++) {
	var str = ds_list_find_value(list,i);
	draw_text(20,20+i*20,str);
}
draw_text(0,0,"Members: ");
*/

var xx = 20;
var yy = 450;

//draw assigned member
if room == quest_board {
	var scale_h = 0.75;
	var scale_w = 0.75;
	draw_sprite_ext(SmallBackground2,0,xx,yy,scale_w,scale_h,0,c_white,1);
	draw_set_color(c_black);
	draw_set_font(Menu_font);
	xx+=30;
	if board.target_list == board.active {
		if ds_list_size(board.active) > 0 {
		var str = ds_list_find_value(board.target_list,focus).assigned;
		draw_text(xx,yy+20,str);
		} else {
			draw_text(xx,yy+20,"No one assigned to these lack of quests");
		}
	}
	
	//draw potential submit
	if board.target_list == board.waiting {
		if ds_list_size(board.waiting) > 0 {
		var str = ds_list_find_value(list,focus);
		draw_text(xx,yy+20,str);
		} else {
			draw_text(xx,yy+20,"No one to assign to these lack of quests");
		}
	}

	//drawe nothing on compleated list
	if board.target_list == board.complete {
	
	}
	draw_set_color(c_white);
	draw_set_font(-1);
}
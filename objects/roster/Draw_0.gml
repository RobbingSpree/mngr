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
	
	draw_set_color(c_black);
	draw_set_font(Menu_font);
	if board.target_list == board.active {
		draw_sprite_ext(SmallBackground2,0,xx,yy,scale_w,scale_h,0,c_white,1);
		xx+=30;
		if ds_list_size(board.active) > 0 {
		var str = ds_list_find_value(list,focus).short_desc;
		draw_text(xx,yy+20,str);
		//draw_text(xx,yy+60,board.focus);
		//draw_text(xx,yy+100,string(str.my_name));
		} else {
			draw_text(xx,yy+20,"No one assigned to these lack of quests");
 		}
	}
	
	//draw potential submit
	if board.target_list == board.waiting {
		draw_sprite_ext(SmallBackground2,0,xx,yy,scale_w,scale_h,0,c_white,1);
		xx+=30;
		if ds_list_size(board.waiting) > 0 {
			if ds_list_size(list) > 0 {
				var str = ds_list_find_value(list,focus).short_desc();
				//str = str.short_desc();
				var str2 = ds_list_find_value(list,focus).just_stats();
				draw_text(xx,yy+20,str);
				draw_text(xx+200,yy+20,str2);
			} else {
				draw_text(xx,yy+20,"No one is avaliable to assign");
			}
		} else {
			if ds_list_size(list) > 0
				draw_text(xx,yy+20,"No one to assign to these lack of quests");
			else 
				draw_text(xx,yy+20,"No one is avaliable");
		}
	}

	//drawe nothing on compleated list
	if board.target_list == board.complete {
	
	}
	draw_set_color(c_white);
	draw_set_font(-1);
}
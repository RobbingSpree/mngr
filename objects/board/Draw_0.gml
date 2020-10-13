//debug
/*
for (var i=0; i<height; i++) {
	var str = ds_list_find_value(target_list,i);
	draw_text(20,120+i*20,str);
}
draw_text(0,100,"Quests:");
*/
//avaliable quests
var xx = 20;
var yy = 120;
draw_set_font(Menu_font);
if room == quest_board {
	var scale_h = 0.75;
	var scale_w = 0.75;
	draw_sprite_ext(DialogueBox,0,xx,yy,scale_w,scale_h,0,c_white,1);
	
	draw_text(xx+70,yy+10,"Quests");
	draw_set_color(c_black);
	yy+=70;
	xx+=30;
	if target_list == waiting {
		if ds_list_size(waiting) > 0 {
			var str = ds_list_find_value(target_list,focus);
			draw_text(xx,yy+20,str);
		} else
			draw_text(xx,yy+20,"No Avaliable Quests to take.")
	}

	//accepted quests
	if target_list == active {
		if ds_list_size(active) > 0 {
			var str = ds_list_find_value(target_list,focus);
			draw_text(xx,yy+20,str);
		} else
			draw_text(xx,yy+20,"No active Quests.")
	}

	//compleated quests
	if target_list == complete {
		if ds_list_size(complete) > 0 {
			var str = ds_list_find_value(target_list,focus);
			draw_text(xx,yy+20,str);
		} else
			draw_text(xx,yy+20,"No Quests compleated.")
	}
}
draw_set_color(c_white);
draw_set_font(-1);

if room == roster_book {
	var xx = 20;
	var yy = 120;

	draw_set_font(Menu_font);
	
	//draw the menu title
	draw_text(xx+30,yy-50,"Hires Board");
	
	draw_set_color(c_black);
	xx += 30;
	if target_list == list {
		if ds_list_size(list) > 0 {
			var str = ds_list_find_value(list,focus);
			draw_text(xx,yy+50,str);
		} else {
			draw_text(xx,yy+50,"No one is willing to join your guild");
		}
	}

	if target_list == roster.list {
		if ds_list_size(roster.list) > 0 {
			var str = ds_list_find_value(roster.list,focus);
			draw_text(xx,yy+50,str);
		} else {
			draw_text(xx,yy+50,"No one in your guild");
		}
	}
	
	//debug
	/*
	yy+= 100;
	if ds_list_size(roster.list) > 0 {
		for (var i=0; i<ds_list_size(roster.list); i++){
				var str = ds_list_find_value(roster.list,i);
				draw_text(xx,yy+20*i,str);
		}
	} else {
		draw_text(xx,yy+20,"Empty Guild");
	}
	//debug end
	*/
	
	draw_set_color(c_white);
	draw_set_font(-1);
}
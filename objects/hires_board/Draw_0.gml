
if room == roster_book {
	var xx = 20;
	var yy = 120;
	draw_set_color(c_black);
	draw_set_font(Menu_font);

	if target_list == list {
		if ds_list_size(list) > 0 {
			var str = ds_list_find_value(list,focus);
			draw_text(xx,yy+20,str);
		} else {
			draw_text(xx,yy+20,"No one is willing to join your guild");
		}
	}

	if target_list == roster.list {
		if ds_list_size(roster.list) > 0 {
			var str = ds_list_find_value(roster.list,focus);
			draw_text(xx,yy+20,str);
		} else {
			draw_text(xx,yy+20,"No one in your guild");
		}
	}
	draw_set_color(c_white);
	draw_set_font(-1);
}
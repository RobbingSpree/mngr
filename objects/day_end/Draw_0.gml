
var xx = 60;
var yy = 40;

if room == day_end_room {
	draw_set_color(c_black);
	draw_set_font(menu_tags);
	draw_set_halign(fa_center);
	draw_text(xx,yy,"Report");
	
	yy+=40;
	
	report = get_update(index)
	draw_text(xx,yy,report);
	
}

draw_set_font(-1);
draw_set_color(c_white);
draw_set_halign(-1);
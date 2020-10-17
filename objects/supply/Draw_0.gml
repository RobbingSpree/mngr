
if room == supply_lines {
	var xx = 20;
	var yy = 120;
	
	draw_set_color(c_black);
	draw_set_font(Menu_font);
	
	var str = ds_list_find_value(routes,focus);
	draw_text(xx,yy,str);
	
	//trunk
	yy+=200;
	draw_text(xx,yy,"Trunk feature, don't expect this to do anything yet.");
	
	draw_set_color(-1);
	draw_set_font(-1);
}
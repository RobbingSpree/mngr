
if hires_board.target_list == hires_board.list {
	draw_self();

	draw_set_font(menu_tags);
	draw_set_halign(fa_center);
	draw_set_color(c_red);
	draw_set_valign(fa_middle);
	draw_text(x+sprite_width/2,y+sprite_height/2+5,"Hire");
	draw_set_color(c_white);
	draw_set_halign(-1);
	draw_set_font(-1);
	draw_set_valign(-1)
}
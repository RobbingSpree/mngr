
if roster.avaliable > 0 && board.target_list == board.waiting && ds_list_find_value(roster.list,roster.focus).status == "Ready" {
	draw_self();

	draw_set_font(menu_tags);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(x+sprite_width/2,y+sprite_height/2+5,"Assign \n to Quest");
	draw_set_halign(-1);
	draw_set_font(-1);
	draw_set_valign(-1)
}
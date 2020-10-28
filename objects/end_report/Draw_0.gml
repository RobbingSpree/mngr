/// @description Insert description here
// You can write your code in this editor
if day_end.index == day_end.last-1 {
	draw_self();
	draw_set_color(c_black);
	draw_set_font(menu_tags);
	draw_set_halign(fa_center);
	draw_text(x+sprite_width/2,y+sprite_height/2,"Close");
	draw_set_font(-1);
	draw_set_color(c_white);
	draw_set_halign(-1);
}
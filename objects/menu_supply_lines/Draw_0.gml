draw_self();

draw_set_font(menu_tags);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x+sprite_width/2,y+sprite_height/2+5,"Supply \n Lines");
draw_set_halign(-1);
draw_set_font(-1);
draw_set_valign(-1);

if room == supply_lines{
	draw_sprite(ButtonHighlight,0,x,y);
}
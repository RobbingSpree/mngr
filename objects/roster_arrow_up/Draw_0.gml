if roster.focus + dir > -1 && roster.focus + dir < ds_list_size(roster.list)
	draw_self();
else
	draw_sprite(nonarrow_spr,image_index,x,y);
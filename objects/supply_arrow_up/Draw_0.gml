if supply.focus + dir > -1 && supply.focus + dir < ds_list_size(supply.routes)
	draw_self();
else
	draw_sprite(nonarrow_spr,image_index,x,y);
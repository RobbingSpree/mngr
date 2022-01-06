if hires_board.focus + dir > -1 && hires_board.focus + dir < ds_list_size(hires_board.target_list)
	draw_self();
else
	draw_sprite(nonarrow_spr,image_index,x,y);


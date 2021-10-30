if board.focus + dir > -1 && board.focus + dir < ds_list_size(board.target_list)
	draw_self();
else
	draw_sprite(nonarrow_spr,image_index,x,y);
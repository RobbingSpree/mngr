var qq = ds_list_find_value(board.target_list,board.focus);

if roster.avaliable > 0 && ds_list_find_value(roster.list,roster.focus).status == "Ready"
	qq.assigned();
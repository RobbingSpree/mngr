
if hires_board.target_list == hires_board.list && ds_list_size(hires_board.list) > 0 {
	ds_list_find_value(hires_board.list,hires_board.focus).hire_me("hired");
	
}
index = 0;
last = ds_list_size(board.active);

if room == day_end_room {
	//run progress on all active quests
	for (var i=0; i<last; i++) {
		var temp = ds_list_find_value(board.active,i);
		temp.progress_me();
	}
}
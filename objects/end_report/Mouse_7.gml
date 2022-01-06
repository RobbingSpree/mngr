if day_end.index >= day_end.last-1 {
	for (var i=0; i<ds_list_size(board.active); i++) {
		//move compleated quests from active to complete remove assigned heroes and change room back to last room before the report
		
		var target = ds_list_find_value(board.active,i);
		if target.progress >= 100
			target.complete_me();
	}
	global.calendar.next_day();
	quest_next_day();
	roster_next_day();
	room_goto(quest_board);
}
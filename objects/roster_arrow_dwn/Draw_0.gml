if roster.focus + dir > -1 && roster.focus + dir < ds_list_size(roster.list) {
	if room == quest_board && board.target_list == board.waiting
		draw_self();
	if room == roster_book
		draw_self();
}
if focus_par != noone && instance_exists(focus_par){
	//check for updates
	if focus_par.focus_var != focus	
		focus = focus_par.focus_var;
	//edge case protection
	if focus > max_len
		focus = max_len;
	if focus < 0
		focus = 0;
}
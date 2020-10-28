// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_update(index){
	//return "Debug string "+string(index);
	
	var Q = ds_list_find_value(board.active,index);
	var str = "";
	str += string(Q.assigned_to.my_name);
	if Q.last_check == "Success" {
		str += " made some progress today on their quest to "
	} else if Q.last_check == "Failure" {
		str += " made no progress today on their quest to "
	}
	str += Q.my_name;
	return str;
}

function faff_about(index) {
	var str = "";
	//get name
	str = string(ds_list_find_value(board.active,index).assigned_to.my_name);
	
	//time spent
	switch (irandom(3)) {
		case  0: str += " spent part of the day "; break;
		case  1: str += " spent most of the day "; break;
		case  2: str += " spent every free moment "; break;
	}
	//activity
	switch (irandom(10)) {
		case  0: str += "picking berries to eat later."; break;
		case  1: str += "learning which mushrooms are edible."; break;
		case  2: str += "playing games with the local kids."; break;
		case  3: str += "following cats around, trying to pet them."; break;
		case  4: str += "dreaming about bread."; break;
		case  5: str += "discovering if they could make flowers bloom with song."; break;
		case  6: str += "watching clouds go by."; break;
		case  7: str += "doing nothing much."; break;
		case  8: str += "napping."; break;
		case  9: str += "eating their snacks and rations."; break;
		case 10: str += "writing poetry."; break;
	}
	return str;
}
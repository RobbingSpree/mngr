
function member(_id) constructor{
	static count = 0;
	count ++;
	name = make_name();
	mem_id = _id;
	index = ds_list_size(hires_board.list);
	hires_board.total_members++;
	ds_list_add(hires_board.list,self);
	status = "Ready";
	assigned_to = noone;
	
	hire_me = function () {
		var new_spot = ds_list_size(roster.list);
		roster.total_members++;
		hires_board.total_members--;
		ds_list_add(roster.list,self);
		ds_list_delete(hires_board.list,index);
		index = new_spot;
	}
	
	toString = function () {
		return "Details for: " +name + " member ID: " + string(mem_id) + " located in the list at pos " + string(index);
	}
}

function make_name() {
	switch (irandom(10)) {
		case 0:  return "A Aron"; break;
		case 1:  return "Tima"; break;
		case 2:  return "Subtlety"; break;
		case 3:  return "Byork"; break;
		case 4:  return "Dennenenis"; break;
		case 5:  return "Catharchris"; break;
		case 6:  return "Buoy"; break;
		case 7:  return "Who"; break;
		case 8:  return "Snuggle"; break;
		case 9:  return "Tree"; break;
		case 10: return "Brank"; break;
	}
}
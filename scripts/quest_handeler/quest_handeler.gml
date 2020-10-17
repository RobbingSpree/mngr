
function quest() constructor{
	static count = 0;
	count ++;
	name = quest_name();
	steps = irandom_range(2,5);
	progress = 0;
	index = count;
	assigned = noone;
	
	ds_list_add(board.waiting,self);
	
	assigned = function () {
		//add to new list
		ds_list_add(board.active,self); 
		//refrence circle
		assigned = ds_list_find_value(roster.list,roster.focus);
		ds_list_find_value(roster.list,roster.focus).assigned_to = self;
		var limit = index;
		//remove from old list
		index = board.focus;
		ds_list_delete(board.waiting,board.focus);
		//update rest of list
		for(var i=limit; i<board.total_members; i++) {
			ds_list_find_value(board.waiting,i).index-=1;
		}
	}
	
	progress = function () {
		progress ++;
		if progress >= steps {
			ds_list_add(board.complete,self);
			assigned = noone;
			ds_list_delete(board.active,index);
		}
	}
	
	toString = function () {
		return "Details for: " + name;
	}
}

function quest_name() {
	var str = "";
	//get verb
	switch (irandom(10)) {
		case 0:  str+= "Find"; break;
		case 1:  str+= "Return"; break;
		case 2:  str+= "Break"; break;
		case 3:  str+= "Teach"; break;
		case 4:  str+= "Flatten"; break;
		case 5:  str+= "Borrow"; break;
		case 6:  str+= "Clean"; break;
		case 7:  str+= "Massage"; break;
		case 8:  str+= "Steal"; break;
		case 9:  str+= "Double"; break;
		case 10: str+= "Fix"; break;
	}
	//get noun
	str+= " ";
	switch (irandom(10)) {
		case 0:  str+= "a Cat"; break;
		case 1:  str+= "my Love"; break;
		case 2:  str+= "her brooch"; break;
		case 3:  str+= "Grandma"; break;
		case 4:  str+= "the bathhouse"; break;
		case 5:  str+= "my baby"; break;
		case 6:  str+= "my husband"; break;
		case 7:  str+= "that guy"; break;
		case 8:  str+= "me"; break;
		case 9:  str+= "my lute"; break;
		case 10: str+= "my house"; break;
	}
	return str;
}

function member(_id) constructor{
	static count = 0;
	count ++;
	my_name = make_name();
	mem_id = _id;
	index = ds_list_size(hires_board.list);
	hires_board.total_members++;
	ds_list_add(hires_board.list,self);
	status = "Hireable";
	assigned_to = noone;
	level = 1;
	xp = 0;
	enthusiasm	= 1;
	brilliance	= 1;
	cunning		= 1;
	wanderlust	= 1;
	roll_skills(self);
	
	static hire_me = function () {
		var new_spot = ds_list_size(roster.list);
		roster.total_members++;
		roster.avaliable ++;
		hires_board.total_members--;
		ds_list_add(roster.list,self);
		ds_list_delete(hires_board.list,index);
		var limit = index;
		for(var i=limit; i<hires_board.total_members; i++) {
			ds_list_find_value(hires_board.list,i).index-=1;
		}
		index = new_spot;
		status = "Ready";
	}
	
	static assign_to_quest = function () {
		roster.avaliable --;
		status = "On A Job";
	}
	
	static toString = function () {
		var str = "";
		str = "Name: "+ my_name + "\nStatus: " + status + "\nLevel: "+ string(level) +"\nBrilliance: " +string(brilliance) +"\nEnthusiasm: "+string(enthusiasm)+"\nCunning: "+string(cunning)+"\nWanderlust: "+string(wanderlust)+"\nExp to next level: "+string(100-xp);
		return str;
		//"\nMember ID: " + string(mem_id) +
	}
	
	static short_desc = function () {
		return "Name: "+ my_name + "\nStatus: " + status + "\nLevel: "+ string(level);
	}
	
	static just_stats = function () {
		return "\nBrilliance: " +string(brilliance) +"\nEnthusiasm: "+string(enthusiasm)+"\nCunning: "+string(cunning)+"\nWanderlust: "+string(wanderlust)
	}

	
}

function roster_next_day() {
	//add new people to the hire pool
	var new_h_num = irandom(2)+1;
	var temp = noone;
	for (var i=0; i<new_h_num; i++) {
		temp = new member(hires_board.total_members);
	}
	//remove people from the hire pool
	var rem_from_hire = irandom(3);
	var heads = 0;
	var i=0;
	while rem_from_hire !=0 {
		if heads = irandom(1) {
			ds_list_delete(hires_board.list,i);
		}
		i++
		if i == ds_list_size(hires_board.total_members) 
			i=0;
	}
}

function roll_skills(target) {
	var skill_pool = 6;
	var d = 2;
	var chng = irandom(d);
	target.enthusiasm += chng;
	skill_pool -= chng;
	chng = irandom(d);
	target.brilliance += chng;
	skill_pool -= chng;
	chng = irandom(d);
	target.cunning += chng;
	skill_pool -= chng;
	chng = irandom(d);
	if skill_pool < chng
		chng = chng-skill_pool;
	target.wanderlust += chng;
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
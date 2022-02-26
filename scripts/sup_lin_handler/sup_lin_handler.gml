
function route(_id) constructor{
	static count = 0;
	count ++;
	name = name_location(_id);
	index = _id;
	supply.total_unlocks++
	ds_list_add(supply.routes,self);
	
	status = "Empty";
	working_on = ds_list_create();
	
	static toString = function () {
		return "Details for the route to " +name + ". Located " + string(index) +" positions from the start.";
	}
}

function town(_id) constructor{
	nam = name_location(_id);
	peep = [];
	pop = 10;
	peep = name_the_peeps(pop);
	xp = [];
	for (var i=0; i<pop; i++) {
		xp[i] = 0;
	}
}

function dungeon(_id) constructor{
	nam = "Dungeon " +string(_id);
	difficulty = 1;
	progress = 0;
}

function name_the_peeps(_pop) {
	var peeps=[];
	for (var i=0; i<_pop; i++;) {
		var pn = "";
		var index = irandom(30);
		switch (index) {
			case 0:  pn = "NPC1";		break;
			case 1:  pn = "NPC2";		break;
			case 2:  pn = "NPC3";		break;
			case 3:  pn = "NPC4";		break;
			case 4:  pn = "NPC4";		break;
			default: pn = "NPC"+string(index);
		}
		peeps[i] = pn;
	}
	return peeps;
}

function name_location(index) {
	switch (index) {
		case 0:  return "Pittshole";		break;
		case 1:  return "Penultimateburg";	break;
		case 2:  return "Fluddsville";		break;
		case 3:  return "Iceburg";			break;
		case 4:  return "Vileville";		break;
		case 5:  return "Clement";			break;
		case 6:  return "Trodge";			break;
		case 7:  return "Ghoti";			break;
		case 8:  return "Table's Turn";		break;
		case 9:  return "Rubicon River";	break;
		case 10: return "Capital CITY";		break;
	}
}
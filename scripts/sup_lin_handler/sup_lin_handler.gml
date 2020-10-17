
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
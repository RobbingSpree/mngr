// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function foreach(list,action){
	//pass all structs in list to a function
	var num = ds_list_size(list);
	for (var i=0; i<num; i++) {
		var temp = ds_list_find_value(list,i);
		if is_struct(temp)
			action(temp);
	}
}
if supply.focus + dir > -1 && supply.focus + dir < ds_list_size(supply.routes)
	draw_self();
else
	draw_sprite(nonarrow_spr,image_index,x,y);
	
	if ds_list_size(supply.routes) > 1 {
//draw the focus dots
	var wid = ds_list_size(supply.routes)-1;
	var fx = 960 - wid/2*38;
	var fy = y-20;
	for (var i=0; i <= wid; i++) {
		var on = 0;
		if supply.focus == i
			on = 1;
		draw_sprite(list_dot_spr,on,fx+i*38,fy);
	}
}

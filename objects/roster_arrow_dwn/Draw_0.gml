if roster.focus + dir > -1 && roster.focus + dir < ds_list_size(roster.list) {
		draw_self();
} else
	draw_sprite(nonarrow_spr,image_index,x,y);
	
if ds_list_size(roster.list) > 1 {
//draw the focus dots
var wid = ds_list_size(roster.list)-1;
var fx = 960 - wid/2*38;
var fy = y-20;
for (var i=0; i <= wid; i++) {
	var on = 0;
	if roster.focus == i
		on = 1;
	draw_sprite(list_dot_spr,on,fx+i*38,fy);
}
//draw_text(fx,fy,string(roster.focus) +" of "+string(wid));
}


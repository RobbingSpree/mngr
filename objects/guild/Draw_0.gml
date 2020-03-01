/// @description draw the member roster

for (var i=0; i<stats.wonderlust; i++)
{
	var str="";
	str = attribute_list(i);
	var str_len = string_width(str)
	draw_text(x,y+i*20,str);
	draw_text(x+str_len,y+i*20,string(members[# mem_focus,i]));
}
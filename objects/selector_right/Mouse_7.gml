/// @description mouse interaction

guild.mem_focus += dir;

if guild.mem_focus < 0
	guild.mem_focus = ds_grid_width(guild.members)-1;
if guild.mem_focus > ds_grid_width(guild.members)-1
	guild.mem_focus = 0;
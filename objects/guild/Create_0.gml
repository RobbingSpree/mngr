/// @description Setup

enum stats
{
	name,
	class,
	level,
	xp,
	enthusiasm,
	brilliance,
	cunning,
	wonderlust,
	skin
}

enum classes
{
	test,
	farmer
}

//table setup
att_num=9;
cla_num=1;
members=ds_grid_create(1,att_num);

member_setup();


mem_focus = 0;
total_members = 0;
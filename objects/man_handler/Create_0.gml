/// @description setup

points = [];

points[0,0] = x-72*2;
points[0,1] = x-72;
points[0,2] = x;
points[0,3] = x+72;
points[0,4] = x+72*2;

points[1,0] = noone;
points[1,1] = noone;
points[1,2] = noone;
points[1,3] = noone;
points[1,4] = noone;

update = false;
change = 0;

for(var i=0; i<5; i++)
{
	points[1,i] = instance_create_depth(points[0,i],y,10,man);
	points[1,i].pos = i;
}
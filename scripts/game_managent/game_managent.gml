// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function make_db(){
	instance_create_layer(20,20,"Instances",hires_board);
	instance_create_layer(20,20,"Instances",board);
	instance_create_layer(20,20,"Instances",roster);
	instance_create_layer(20,20,"Instances",supply);
}
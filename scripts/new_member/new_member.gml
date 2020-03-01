
var new_spot = ds_grid_width(members);
ds_grid_resize(members,new_spot+1,att_num);

members[# new_spot, stats.name] = new_name(); //player name
members[# new_spot, stats.class] = irandom(cla_num); //player Class
members[# new_spot, stats.level] = 1; //player lavel
members[# new_spot, stats.xp] = irandom(20); //player experiance
members[# new_spot, stats.enthusiasm] = irandom(4); //player Enthusiasm
members[# new_spot, stats.brilliance] = irandom(4); //player Brilliance
members[# new_spot, stats.cunning] = irandom(4); //player Cunning
members[# new_spot, stats.wonderlust] = irandom(4); //player Wonderlust
members[# new_spot, stats.skin] = irandom(8); //player Skin type

total_members++;
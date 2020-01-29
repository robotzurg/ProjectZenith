//add_to_enemyparty(char_id);
///@param char_id

var char_id = argument0;

var mymap = global.enemy_list[| char_id];

ds_list_add(global.enemyparty,mymap);
var pos = (ds_list_size(global.enemyparty)-1)
ds_list_mark_as_map(global.enemyparty,pos);

var newloc = global.enemyparty[| pos];

show_debug_message("Added " + string(newloc[? "name"]) + " to enemy team!");
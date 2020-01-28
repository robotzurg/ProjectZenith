//add_to_party(char_id, position);
///@param char_id
///@param position

var char_id = argument0;
var pos = argument1;

var mymap = global.enemy_list[| char_id];

ds_list_replace(global.enemyparty,pos,mymap);
ds_list_mark_as_map(global.enemyparty,pos);

var newloc = global.enemyparty[| pos];

show_debug_message("Added " + string(newloc[? "name"]) + " to enemy team!");
//add_to_party(char_id, position);
///@param char_id
///@param position

var char_id = argument0;
var pos = argument1;

var mymap = global.party_members[| char_id];

ds_list_replace(global.currentparty,pos,mymap);
ds_list_mark_as_map(global.currentparty,pos);

var newloc = global.currentparty[| pos];

show_debug_message("Added " + string(newloc[? "name"]) + " to team!");
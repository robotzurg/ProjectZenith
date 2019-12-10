//setup_character(id, name, sprite, textbox_sprite, strength, defense, weapon_equipped, xp, max_xp, level);
///@param map
///@param id
///@param name
///@param sprite
///@param textbox_sprite
///@param strength
///@param defense
///@param weapon_equipped
///@param xp
///@param max_xp
///@param level

var map = argument0;
var char_id = argument1;
var name = argument2;
var sprite = argument3;
var textbox_spr = argument4;
var str = argument5;
var def = argument6;
var wep_equip = argument7;
var xp = argument8;
var max_xp = argument9;
var level = argument10;

ds_map_add(map, "id", char_id);
ds_map_add(map, "name", name);
ds_map_add(map, "spr", sprite);
ds_map_add(map, "textbox_spr", textbox_spr);
ds_map_add(map, "str", str);
ds_map_add(map, "def", def);
ds_map_add(map, "wep_equipped", wep_equip);
ds_map_add(map, "xp", xp);
ds_map_add(map, "max_xp", max_xp);
ds_map_add(map, "level", level);
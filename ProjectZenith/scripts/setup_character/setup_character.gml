//setup_character(id, name, sprite, textbox_sprite, strength, defense, weapon_equipped, xp, max_xp, level, hp, max_hp, mp, max_mp);
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
///@param hp
///@param maxhp
///@param mp
///@param maxmp

var map = argument0;
var char_id = argument1;
var name = argument2;
var sprite = argument3;
var textbox_spr = argument4;
var str = argument5;
var def = argument6;
var wep_equipped = argument7;
var xp = argument8;
var max_xp = argument9;
var level = argument10;
var hp = argument11;
var maxhp = argument12;
var mp = argument13;
var maxmp = argument14;
var portrait = argument15;

ds_map_add(map, "id", char_id);
ds_map_add(map, "name", name);
ds_map_add(map, "spr", sprite);
ds_map_add(map, "textbox_spr", textbox_spr);
ds_map_add(map, "str", str);
ds_map_add(map, "def", def);
ds_map_add(map, "wep_equipped", wep_equipped);
ds_map_add(map, "xp", xp);
ds_map_add(map, "max_xp", max_xp);
ds_map_add(map, "level", level);
ds_map_add(map, "hp", hp);
ds_map_add(map, "maxhp", maxhp);
ds_map_add(map, "mp", mp);
ds_map_add(map, "maxmp", maxmp);
ds_map_add(map, "portrait", portrait);

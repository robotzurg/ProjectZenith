//setup_enemy(id, name, sprite, textbox_sprite, strength, defense, level, hp, max_hp, mp, max_mp);
///@param map
///@param id
///@param name
///@param sprite
///@param textbox_sprite
///@param strength
///@param defense
///@param level
///@param hp
///@param maxhp
///@param mp
///@param maxmp

var map = argument[0];
var char_id = argument[1];
var name = argument[2];
var spr = argument[3];
var textbox_spr = argument[4];
var str = argument[5];
var def = argument[6];
var level = argument[7];
var hp = argument[8];
var max_hp = argument[9];
var mp = argument[10];
var max_mp = argument[11];

ds_map_add(map, "map", map);
ds_map_add(map, "id", char_id);
ds_map_add(map, "name", name);
ds_map_add(map, "spr", spr);
ds_map_add(map, "textbox_spr", textbox_spr);
ds_map_add(map, "str", str);
ds_map_add(map, "def", def);
ds_map_add(map, "level", level);
ds_map_add(map, "hp", hp);
ds_map_add(map, "max_hp", max_hp);
ds_map_add(map, "mp", mp);
ds_map_add(map, "max_mp", max_mp);
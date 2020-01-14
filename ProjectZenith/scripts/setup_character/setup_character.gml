//setup_character(id, name, sprite, textbox_sprite, strength, defense, weapon_equipped, xp, max_xp, level, hp, max_hp, mp, max_mp, portrait, textbox_spr_hover);
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
///@param portrait
///@param textbox_sprite_hover

var map = argument[0];
var char_id = argument[1];
var name = argument[2];
var spr = argument[3];
var textbox_spr = argument[4];
var str = argument[5];
var def = argument[6];
var wep_equipped = argument[7];
var xp = argument[8];
var max_xp = argument[9];
var level = argument[10];
var hp = argument[11];
var max_hp = argument[12];
var mp = argument[13];
var max_mp = argument[14];
var portrait = argument[15];
var textbox_spr_hover = argument[16];

ds_map_add(map, "map", map);
ds_map_add(map, "id", char_id);
ds_map_add(map, "name", name);
ds_map_add(map, "spr", spr);
ds_map_add(map, "textbox_spr", textbox_spr);
ds_map_add(map, "str", str);
ds_map_add(map, "def", def);
ds_map_add(map, "wep_equipped", wep_equipped);
ds_map_add(map, "xp", xp);
ds_map_add(map, "max_xp", max_xp);
ds_map_add(map, "level", level);
ds_map_add(map, "hp", hp);
ds_map_add(map, "max_hp", max_hp);
ds_map_add(map, "mp", mp);
ds_map_add(map, "max_mp", max_mp);
ds_map_add(map, "portrait", portrait);
ds_map_add(map, "textbox_spr_hover", textbox_spr_hover);

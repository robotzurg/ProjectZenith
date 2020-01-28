ID = global.IDtoinsert
partyID = global.partyIDtoinsert;
show_debug_message(ID);

var map = global.enemy_list[| ID];
sprite_index = map[? "spr"];
name = map[? "name"];
hp = map[? "hp"];
maxhp = map[? "max_hp"];
mp = map[? "mp"];
maxmp = map[? "max_mp"];
str = map[? "str"];
def = map[? "def"];
textboxspr = map[? "textbox_spr"];
level = map[? "level"];
buff = status.none;
debuff = status.none;
selection = "none";
target = "none";
turndone = false;
show_details = false;
delay = -1;
dead = false;
xp = 5;
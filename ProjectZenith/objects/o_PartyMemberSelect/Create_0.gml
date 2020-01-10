ID = global.IDtoinsert
partyID = global.partyIDtoinsert;

var map = global.party_members[| ID];
sprite_index = map[? "spr"];
name = map[? "name"];
hp = map[? "hp"];
maxhp = map[? "max_hp"];
mp = map[? "mp"];
maxmp = map[? "max_mp"];
str = map[? "str"];
def = map[? "def"];
portrait = map[? "portrait"];
textboxspr = map[? "textbox_spr"];
currentxp = map[? "xp"];
wepequipped = map[? "wep_equipped"];

picked_up = false;
scale = 1.5;
backstock = false;
extrapartypos = -1;
ds_size_at_drop = -1; //This is only used to reshuffle the positions of everything if something is taken out the extra party box.
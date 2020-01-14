if (live_call()) return live_result;
ID = global.IDtoinsert
partyID = global.partyIDtoinsert;
var map_ = global.currentparty[| partyID];
partyPos = ds_list_find_index(global.currentparty, map_[? "map"]);
show_debug_message(partyPos);

picked_up = false;
scale = 1.5;
backstock = false

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

switch (ID) {
	case char.battleplayer1: extrapartypos = 0; break;
	case char.battleplayer2: extrapartypos = 1; break;
	case char.battleplayer3: extrapartypos = 2; break;
	default: extrapartypos = 0; break;
}
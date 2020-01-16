if (live_call()) return live_result;
ID = global.IDtoinsert
partyID = global.partyIDtoinsert;
var map_ = global.currentparty[| partyID];
if partyID != -1 {
	partyID = ds_list_find_index(global.currentparty, map_[? "map"]);
	extrapartypos = -1;
}

picked_up = false;
scale = (partyID == -1) ? 1 : 1.5;
backstock = (partyID == -1) ? true : false;
popuptimer = 0;
popup = false;

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
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

switch partyID {
	case 0: defx = room_width/2-250; break;
	case 1: defx = room_width/2; break;
	case 2: defx = room_width/2+250; break;
}

defy = room_height/2-50
grabbed = false;
scale = 1;
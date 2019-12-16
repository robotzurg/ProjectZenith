ID = global.IDtoinsert
partyID = global.partyIDtoinsert;
show_debug_message("What It is (ID): " + string(ID));
show_debug_message("What It is (PartyID): " + string(partyID));

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
buff = status.none;
debuff = status.none;
textboxsprhover = s_9sliceselect;
selection = "none";
target = "none";
turndone = false;
show_details = false;

//MVP Calculations
dmgdealt = 0;
debuffsdealt = 0; //Will be added when buffs/debuffs are added
buffsdealt = 0; //Will be added when buffs/debuffs are added
healthhealed = 0;
finalhitsdealt = 0;
killedenemy[0] = 0;
killedenemy[1] = 0;
killedenemy[2] = 0;
killedenemy[3] = 0;
killedenemy[4] = 0;


if (live_call()) return live_result;

global.holding = -2;
menufoc = "party";

var map = global.currentparty[| 0]
if map != 0 {
global.IDtoinsert = map[? "id"];
global.partyIDtoinsert = 0;
var party_inst = instance_create_depth(room_width/2-250,room_height/2-50,-1500,o_PartyMemberSelect);
}

var map = global.currentparty[| 1]
if map != 0 {
global.IDtoinsert = map[? "id"];
global.partyIDtoinsert = 1;
var party_inst = instance_create_depth(room_width/2,room_height/2-50,-1500,o_PartyMemberSelect);
}

var map = global.currentparty[| 2]
if map != 0 {
global.IDtoinsert = map[? "id"];
global.partyIDtoinsert = 2;
var party_inst = instance_create_depth(room_width/2+250,room_height/2-50,-1500,o_PartyMemberSelect);
}

for (var i = 0; i < ds_list_size(global.extraparty); i++) {
	global.IDtoinsert = global.extraparty[| i];
	show_debug_message(global.extraparty[| i]);
	global.partyIDtoinsert = -1;
	var party_inst = instance_create_depth(90,440,-1500,o_PartyMemberSelect);
}
if (live_call()) return live_result;

global.holding = -1;
global.amountinextra = 0;

var map = global.currentparty[| 0]
global.IDtoinsert = map[? "id"];
global.partyIDtoinsert = 0;
var party_inst = instance_create_depth(room_width/2-250,room_height/2-50,-1500,o_PartyMemberSelect);

var map = global.currentparty[| 1]
global.IDtoinsert = map[? "id"];
global.partyIDtoinsert = 1;
var party_inst = instance_create_depth(room_width/2,room_height/2-50,-1500,o_PartyMemberSelect);

var map = global.currentparty[| 2]
global.IDtoinsert = map[? "id"];
global.partyIDtoinsert = 2;
var party_inst = instance_create_depth(room_width/2+250,room_height/2-50,-1500,o_PartyMemberSelect);
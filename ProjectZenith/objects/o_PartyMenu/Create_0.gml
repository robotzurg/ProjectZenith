if (live_call()) return live_result;

grabbed = array_create(3)
disable = array_create(3,false);
global.holding = false;

par1x = (grabbed[0] = true) ? mouse_x : room_width/2-250
par1y = (grabbed[0] = true) ? mouse_y : room_height/2-50

par2x = (grabbed[1] = true) ? mouse_x : room_width/2
par2y = (grabbed[1] = true) ? mouse_y : room_height/2-50

par3x = (grabbed[2] = true) ? mouse_x : room_width/2+250
par3y = (grabbed[2] = true) ? mouse_y : room_height/2-50

p1colx1 = (grabbed[0] = true) ? mouse_x : 181
p1colx2 =  (grabbed[0] = true) ? mouse_x : 278
p1coly1 =  (grabbed[0] = true) ? mouse_y : 144
p1coly2 =  (grabbed[0] = true) ? mouse_y : 294

p2colx1 = (grabbed[1] = true) ? mouse_x : 431
p2colx2 =  (grabbed[1] = true) ? mouse_x : 528
p2coly1 =  (grabbed[1] = true) ? mouse_y : 144
p2coly2 =  (grabbed[1] = true) ? mouse_y : 294

p3colx1 = (grabbed[2] = true) ? mouse_x : 681
p3colx2 =  (grabbed[2] = true) ? mouse_x : 778
p3coly1 =  (grabbed[2] = true) ? mouse_y : 144
p3coly2 =  (grabbed[2] = true) ? mouse_y : 294

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
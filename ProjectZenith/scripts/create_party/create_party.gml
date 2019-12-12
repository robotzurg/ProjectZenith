//create_party(pos);
///@param pos

var pos = argument0;

var map = global.currentparty[| pos]
var party_inst = instance_create_layer(160,100+(125*pos)+(110 * (global.partycount = 1)) + (50 * (global.partycount = 2)),"Instances",o_battletemplate);

party_inst.ID = map[? "id"];
//create_party(pos);
///@param pos

var ex = 720;
var ey = 175;
var pos = argument0;

var map = global.enemyparty[| pos]
global.IDtoinsert = map[? "id"];
global.partyIDtoinsert = pos;
var en_inst = instance_create_layer(ex+40,ey+15+(111*pos),"Instances",o_parentenemy);

enID[pos] = en_inst.id;
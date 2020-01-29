//create_party(pos);
///@param pos

var ex = 720;
var ey = 175;
var xx = 0;
var pos = argument0;

var map = global.enemyparty[| pos]
global.IDtoinsert = map[? "id"];
global.partyIDtoinsert = pos;
switch (global.enemycount) {
	case 1:	var en_inst = instance_create_layer(ex+40,ey+15+(96*pos),"Instances",o_parentenemy); break;
	case 2:	var en_inst = instance_create_layer(ex+40,ey-35+(111*pos),"Instances",o_parentenemy); break;
	case 3:	var en_inst = instance_create_layer(ex+40,ey-85+(111*pos),"Instances",o_parentenemy); break;
	case 4:
		if pos = 0 {
			var en_inst = instance_create_layer(ex-2,ey-115+(100*pos),"Instances",o_parentenemy); 
		} else if pos = 1 or pos = 2 {
			var en_inst = instance_create_layer(ex+30,ey-115+(100*pos),"Instances",o_parentenemy); 
		} else if pos = 3 {
			var en_inst = instance_create_layer(ex-2,ey-115+(100*pos),"Instances",o_parentenemy); 	
		} break;
	case 5:
		if pos < 3 {
			var en_inst = instance_create_layer(ex,ey-85+(111*pos),"Instances",o_parentenemy); 
		} else {
			var en_inst = instance_create_layer(ex+100,ey-35+(115*xx),"Instances",o_parentenemy); 	
			xx++;
		} break		
	}

enID[pos] = en_inst.id;
//create_enemyparty(pos);
///@param pos
var ex = 720;
var ey = 175;
var pos = argument0;

var map = global.enemyparty[| pos]
global.IDtoinsert = map[? "id"];
global.partyIDtoinsert = pos;
switch (global.enemycount) {
	case 1:	var en_inst = instance_create_layer(ex+40,ey+55+(96*pos),"Instances",o_enemytemplate); break;
	case 2:	var en_inst = instance_create_layer(ex+40,ey+(111*pos),"Instances",o_enemytemplate); break;
	case 3:	var en_inst = instance_create_layer(ex+40,ey-65+(111*pos),"Instances",o_enemytemplate); break;
	case 4: var en_inst = instance_create_layer(ex+40,ey-95+(100*pos),"Instances",o_enemytemplate); break;
	case 5:
		if pos < 3 {
			var en_inst = instance_create_layer(ex,ey-65+(111*pos),"Instances",o_enemytemplate); 
		} else {
			show_debug_message("outwards");
			var en_inst = instance_create_layer(ex+100,ey-350+(111*pos),"Instances",o_enemytemplate); 	
		} break;
	}

enID[pos] = en_inst.id;
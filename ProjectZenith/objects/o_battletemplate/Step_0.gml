if turndone = false {
if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,self) {
	global.charfocus.selection = "none";
	global.charfocus.target = "none";
	global.charfocus = object_index;
	o_BattleEngine.menu_open = "none";
}

if position_meeting(mouse_x,mouse_y,self) {
	image_index = 1;	
} else {
	image_index = 0;	
}

switch (selection) {
	case "attack": 
	if target != "none" {
		target.hp -= str;
		turndone = true;
		selection = "none";
		target = "none";
		if party[0].turndone = false {
			global.charfocus = party[0]
		} else if party[1].turndone = false {
			global.charfocus = party[1]
		} else {
			global.charfocus = party[0];
		}
	}
	break;
}

if party[0].turndone = true && party[1].turndone = true {
	global.currentturn = "Enemies";
}
}
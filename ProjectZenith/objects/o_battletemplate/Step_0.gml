if turndone = false {
if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,self) {
	global.charfocus.selection = "none";
	global.charfocus.target = "none";
	global.charfocus = object_index;
	o_BattleEngine.menu_open = "none";
}

if position_meeting(mouse_x,mouse_y,object_index) {
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
		if global.party[0].turndone = false {
			global.charfocus = global.party[0]
		} else if global.party[1].turndone = false {
			global.charfocus = global.party[1];
		} else {
			global.charfocus = global.party[0];
		}
	}
	break;
}

if global.party[0].turndone = true && global.party[1].turndone = true {
	global.currentturn = "Enemies";
	var enemypick = irandom_range(1,global.enemycount-1);
	show_debug_message(enemypick);
	global.charfocus = global.enemyparty[enemypick];
}
}
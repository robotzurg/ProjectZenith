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
		dmgdealt += str;
		create_fade_text(target.x-50,target.y,str);
		if target.hp <= 0 {
			target.dead = true;
			o_BattleEngine.totaldead += 1;
			show_debug_message(o_BattleEngine.totaldead);
			target.hp = 0;
		}
		turndone = true;
		o_BattleEngine.turnsdone += 1;
		selection = "none";
		target = "none";
		if o_BattleEngine.turnsdone != global.partycount {
			for (var roll = 0; global.charfocus.turndone = true; roll ++) {
				global.charfocus = global.party[roll]
			}
		}
	}
	break;
}
}
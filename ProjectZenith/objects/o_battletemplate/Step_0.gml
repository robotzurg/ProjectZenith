if turndone = false {
if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,self) {
	o_BattleEngine.plrID[global.charfocus].selection = "none";
	o_BattleEngine.plrID[global.charfocus].target = "none";
	global.charfocus = partyID;
	o_BattleEngine.menu_open = "none";
}

if position_meeting(mouse_x,mouse_y,self) {
	image_index = 1;
	if mouse_check_button_pressed(mb_left) { show_details = !show_details };
} else {
	image_index = 0;	
	if mouse_check_button_pressed(mb_left) { show_details = false };
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
			target.hp = 0;
			for (var i = 0; i < 4; i++) {
				if killedenemy[i] = 0 {
					killedenemy[i] = target.xp;
					break;
				}
			}
		}
		turndone = true;
		o_BattleEngine.turnsdone += 1;
		selection = "none";
		target = "none";
		if o_BattleEngine.turnsdone != global.partycount {
			for (var roll = 0; o_BattleEngine.plrID[global.charfocus].turndone = true; roll ++) {
				global.charfocus = roll
			}
		}
	}
	break;
}
}

if selection != "none" and target != "none" and turndone = false {
	instance_create_layer(x+50,y,"Instances",o_swordswing);
	o_swordswing.user = id;
	o_swordswing.usertype = "Player";
}
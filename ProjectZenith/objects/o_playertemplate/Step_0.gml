if global.currentturn == "Players" && selection == "none" && global.charfocus == partyID {
	if turndone == true {
		show_debug_message(string(id) + " Player's turn already done, picking next player");
		pick_next_player();
	}
	
	if dead == true {
		show_debug_message(string(id) + " Player is dead, picking next player");
		pick_next_player();
	}
}

if dead == true {
	image_index = 1;	
	turndone = true;
}

if turndone == false && dead == false {
if mouse_check_button_pressed(mb_left) && position_meeting(global.d_mouse_x,global.d_mouse_y,self) {
	o_BattleEngine.plrID[global.charfocus].selection = "none";
	o_BattleEngine.plrID[global.charfocus].target = "none";
	global.charfocus = partyID;
	o_BattleEngine.menu_open = "none";
}

if position_meeting(global.d_mouse_x,global.d_mouse_y,self) {
	if mouse_check_button_pressed(mb_right) { show_details = !show_details };
} else {	
	if mouse_check_button_pressed(mb_right) or mouse_check_button_pressed(mb_left) { show_details = false };
}


if selection != "none" and target != "none" and turndone = false {
	instance_create_layer(x+50,y,"Instances",o_swordswing);
	o_swordswing.user = id;
	o_swordswing.usertype = "Player";
}

switch (selection) {
	case "attack": 
	if target != "none" {
		var damage = str;
		var crit = false;
		if (chance(crit_chance)) { 
			damage = str*2; 
			show_debug_message(damage); 
			crit = true;
		}
		
		target.hp -= damage
		dmgdealt += damage
		if crit == false { draw_fade_text(target.x-50,target.y,damage); } else { draw_fade_text(target.x-50,target.y,"Critical Hit! " + string(damage)); }
		
		if target.hp <= 0 {
			target.dead = true;
			o_BattleEngine.enemytotaldead += 1;
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
			instance_deactivate_object(o_iconparent)
			show_debug_message(string(id)  + " Picking next player.");
			pick_next_player();
		}
	}
	break;
}
}
if global.currentturn == "Players" && selection == "none" && global.charfocus == partyID {
	if turndone == true {
		print(string(id) + " Player's turn already done, picking next player");
		pick_next_player();
	}
	
	if dead == true {
		print(string(id) + " Player is dead, picking next player");
		pick_next_player();
	}
}

if dead == true {
	image_index = 1;	
	turndone = true;
}

if turndone == false && dead == false {
if mouse_check_button_pressed(mb_left) && position_meeting(global.d_mouse_x,global.d_mouse_y,self) {
	FOCPLR.selection = "none";
	FOCPLR.target = "none";
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
		var damage = str - target.def;
		var crit = false;
		if (chance(crit_chance)) { 
			damage = str*2; 
			print(damage); 
			crit = true;
		}
		if damage < 1 damage = 1;
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
		end_turn()
	}
	break;
	
	case "glitch":
	var enemy = irandom_range(0,array_length_1d(o_BattleEngine.enID)-1)
	target = o_BattleEngine.enID[enemy]
	if target != "none" {
		var stat = irandom_range(1,2);
		print(stat);
		switch(stat) {
			case 1: if target.str != 0 {  target.str -= 1 target.strd = true } else if target.def != 0 { target.def -= 1 target.defd = true } break
			case 2 : if target.def != 0 { target.def -= 1 target.defd = true } else if target.str != 0 { target.str -= 1 target.strd = true } break
			
		}
		end_turn()
	}
	
	case "item":
		if itemselected != -1 {
			use_item(itemselected, self);
			end_turn();
		}
	
	break;
}
}
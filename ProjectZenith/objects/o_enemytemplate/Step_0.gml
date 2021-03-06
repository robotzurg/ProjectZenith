if global.currentturn == "Players" {
	turndone = false;	
}

if turndone == true && global.enemyfocus == self && global.currentturn == "Enemies" && selection == "none" {
	print(string(id) + " Enemy's turn already done, picking next enemy");
	pick_next_enemy();
}

if dead == true && global.enemyfocus == self && global.currentturn == "Enemies" && selection == "none" {
	print(string(id) + " Enemy is dead, picking next enemy");
	pick_next_enemy();
}


if dead == false {
if keyboard_check(ord("O")) {
	hp -= 1;	
}

image_index = (position_meeting(global.d_mouse_x,global.d_mouse_y,self)) ? 2 : 0;

if mouse_check_button_pressed(mb_left) && !position_meeting(global.d_mouse_x,global.d_mouse_y,self) {
	show_details = false;	
}

if mouse_check_button_pressed(mb_left) && position_meeting(global.d_mouse_x,global.d_mouse_y,self) && global.currentturn == "Players" {
	if FOCPLR.selection != "none" {
		FOCPLR.target = self;
	} else {
		show_details = !show_details;	
	}
}

if global.currentturn == "Enemies" && global.enemyfocus == self && selection == "none" && turndone == false  {
	print(string(id) + " I'm Attacking!");
	target = irandom_range(0,global.partycount-1);
	selection = "attack"
	delay = 60;
}

if delay > 0 {
	delay -= 1	
} else {
	if selection = "attack" {
		var roll = pick_next_target();
		if roll == false {
			exit; //If the target we picked is dead, cut back to the start of the code so that we can try again.
		} else {
			var damage = str - o_BattleEngine.plrID[target].def
			if damage < 1 damage = 1;
			o_BattleEngine.plrID[target].hp -= damage;
			if o_BattleEngine.plrID[target].hp <= 0 {
				o_BattleEngine.plrID[target].dead = true;
				o_BattleEngine.playertotaldead += 1;
				print("Player Killed.");
			}
			draw_fade_text(o_BattleEngine.plrID[target].x+50,o_BattleEngine.plrID[target].y,damage);
			instance_create_layer(x-32,y,"Instances",o_swordswing);
			o_swordswing.user = self;
			o_swordswing.usertype = "Enemy";
			selection = "wait";
			delay = 60;
			turndone = true;
			o_BattleEngine.turnsdone += 1;
			
			//Paste info to the console, for debugging
			print("Turns Done: " + string(o_BattleEngine.turnsdone))
			print("Max Turns: " + string(global.enemycount-o_BattleEngine.enemytotaldead));
			print(string(id) +" Attack Finished.");
		}
	} else if selection = "wait" {
		selection = "none";
		if o_BattleEngine.turnsdone != global.enemycount-o_BattleEngine.enemytotaldead { 
			print(string(id)  + " Picking next enemy.");
			pick_next_enemy();
		} else {
			o_BattleEngine.turnsdone = 0;
			global.currentturn = "Players";
			global.charfocus = 0;
		}
		}
	}
} else {
	image_index = 1;	
}
if global.currentturn = "Players" {
	turndone = false;	
}

if turndone == true && global.charfocus = self && global.currentturn = "Enemies" && selection = "none" {
	show_debug_message(string(id) + " Enemy's turn already done, picking next enemy");
	pick_next_enemy();
}

if dead == true && global.charfocus == self && global.currentturn == "Enemies" && selection = "none" {
	show_debug_message(string(id) + " Enemy is dead, picking next enemy");
	pick_next_enemy();
}


if dead == false {
if keyboard_check(ord("O")) {
	hp -= 1;	
}

if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,self) && global.currentturn == "Players" {
	if global.charfocus.selection != "none" {
		global.charfocus.target = self;
	}
}


if global.currentturn == "Enemies" && global.charfocus = self && selection == "none" && turndone == false  {
	show_debug_message(string(id) + " I'm Attacking!");
	target = irandom_range(0,global.partycount-1);
	selection = "attack"
	delay = 60;
}

if delay > 0 {
	delay -= 1	
} else {
	if selection = "attack" {
		var target = irandom_range(0,global.partycount-1);
		global.party[target].hp -= 2;
		instance_create_layer(x-32,y,"Instances",o_swordswing);
		o_swordswing.user = self;
		o_swordswing.usertype = "Enemy";
		selection = "wait";
		delay = 60;
		turndone = true;
		o_BattleEngine.turnsdone = o_BattleEngine.totaldead;
		o_BattleEngine.turnsdone += 1;
		show_debug_message("Turns Done: " + string(o_BattleEngine.turnsdone))
		show_debug_message(string(id) +" Attack Finished.");
	} else if selection = "wait" {
		show_debug_message(string(id)  + " Picking next enemy.");
		selection = "none";
		pick_next_enemy();
	}
}
} else {
	image_index = 1;	
}
if keyboard_check(ord("O")) {
	hp -= 1;	
}

if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,self) && global.currentturn == "Players" {
	if global.charfocus.selection != "none" {
		global.charfocus.target = self;
	}
}


if global.currentturn == "Enemies" && global.charfocus = self {
		target = irandom_range(0,global.partycount-1);
		selection = "attack"
		delay = 60;
}

if delay > 0 {
	delay -= 1	
} else {
	if selection = "attack" {
		target.hp -= 2;
		instance_create_layer(x-32,y,"Instances",o_swordswing);
		selection = "wait";
		delay = 60;
	} else if selection = "wait" {
		for (var i = 0; i > global.enemycount; i++) {
			
		}
	}
}
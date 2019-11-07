if keyboard_check(ord("O")) {
	hp -= 1;	
}

if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,self) && global.charfocus.selection != "none" {
	global.charfocus.target = self;
}




//Leave the party select menu and activate all the instances again
if keyboard_check_pressed(vk_escape) {
	instance_destroy();	
	instance_activate_all()
}

if point_in_rectangle(mouse_x,mouse_y,room_width-48,0,room_width,50) && mouse_check_button_pressed(mb_left) && menufoc == "party" {
	if menufoc == "party" {
		menufoc = "pause";	
	} else {
		menufoc = "party";
	}
}

var click = mouse_check_button_pressed(mb_left)
	
if point_in_rectangle(mouse_x,mouse_y,420,175,540,215) {
	if click {
		instance_destroy();	
		instance_activate_all()
	}
	scale[0] = lerp(scale[0],1.5,0.25);
} else {
	scale[0] = lerp(scale[0],1,0.25);
}

if point_in_rectangle(mouse_x,mouse_y,420,225,540,265) {
	if click {
			
	}
	scale[1] = lerp(scale[1],1.5,0.25);
} else {
	scale[1] = lerp(scale[1],1,0.5);
}

if point_in_rectangle(mouse_x,mouse_y,405,275,555,315) {
	if click {
		menufoc = "party";
	}
	scale[2] = lerp(scale[2],1.5,0.25);
} else {
	scale[2] = lerp(scale[2],1,0.25);
}

if point_in_rectangle(mouse_x,mouse_y,420,325,540,365) {
	if click {
		game_end();
	}
	scale[3] = lerp(scale[3],1.5,0.25);
} else {
	scale[3] = lerp(scale[3],1,0.25);
}
	
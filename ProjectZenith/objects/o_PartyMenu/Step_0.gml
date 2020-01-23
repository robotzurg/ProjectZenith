//Leave the party select menu and activate all the instances again
if keyboard_check_pressed(vk_escape) {
	instance_destroy();	
	instance_activate_all()
	instance_destroy(o_PartyMemberSelect);

}

if point_in_rectangle(global.d_mouse_x,global.d_mouse_y,global.window_width-48,0,global.window_width,50) && mouse_check_button_pressed(mb_left) && menufoc == "party" {
	if menufoc == "party" {
		menufoc = "pause";	
	} else {
		menufoc = "party";
	}
}

var click = mouse_check_button_pressed(mb_left)

if menufoc == "pause" {
instance_deactivate_object(o_PartyMemberSelect);
	
if point_in_rectangle(global.d_mouse_x,global.d_mouse_y,global.window_width/2-50,175,global.window_width/2+50,220) {
	if click {
		instance_destroy();	
		instance_activate_all()
	}
	scale[0] = lerp(scale[0],1.5,0.25);
} else {
	scale[0] = lerp(scale[0],1,0.25);
}

if point_in_rectangle(global.d_mouse_x,global.d_mouse_y,global.window_width/2-50,225,global.window_width/2+50,270) {
	if click {
			
	}
	scale[1] = lerp(scale[1],1.5,0.25);
} else {
	scale[1] = lerp(scale[1],1,0.5);
}

if point_in_rectangle(global.d_mouse_x,global.d_mouse_y,global.window_width/2-75,275,global.window_width/2+75,320) {
	if click {
		menufoc = "party";
	}
	scale[2] = lerp(scale[2],1.5,0.25);
} else {
	scale[2] = lerp(scale[2],1,0.25);
}

if point_in_rectangle(global.d_mouse_x,global.d_mouse_y,global.window_width/2-50,325,global.window_width/2+50,370) {
	if click {
		game_end();
	}
	scale[3] = lerp(scale[3],1.5,0.25);
} else {
	scale[3] = lerp(scale[3],1,0.25);
}
	
} else {
	instance_activate_object(o_PartyMemberSelect);	
}
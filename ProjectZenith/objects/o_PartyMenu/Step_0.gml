if (live_call()) return live_result;

//Leave the party select menu and activate all the instances again
if keyboard_check_pressed(vk_escape) {
	instance_destroy();	
	instance_activate_all()
}

if point_in_rectangle(mouse_x,mouse_y,room_width-48,0,room_width,50) && mouse_check_button_pressed(mb_left) {
	if menufoc == "party" {
		menufoc = "pause";	
	} else {
		menufoc = "party";
	}
}
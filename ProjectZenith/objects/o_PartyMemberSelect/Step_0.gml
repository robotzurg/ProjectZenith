if (live_call()) return live_result;
image_xscale = scale;
image_yscale = scale;

scale = (picked_up) ? lerp(scale,1,0.5) : lerp(scale,1.5,0.5); //If picked_up is true, set scale to 1, otherwise set scale to 1.5.

held_click = mouse_check_button(mb_left);

if (held_click) && position_meeting(mouse_x,mouse_y,self) && global.holding == false {
	picked_up = true;
	global.holding = true;
}

if mouse_check_button_released(mb_left) && picked_up == true {
	picked_up = false;
	global.holding = false;
}

if picked_up == true {
	x = mouse_x;
	y = mouse_y;
}

if picked_up == false {
	switch (partyID) {
		case 0: x = room_width/2-250 y = room_height/2-50; break;
		case 1: x = room_width/2 y = room_height/2-50; break; 
		case 2: x = room_width/2+250 y = room_height/2-50; break;
	}
}


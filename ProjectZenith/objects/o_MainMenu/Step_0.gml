var click = mouse_check_button_pressed(mb_left);

if keyboard_check_pressed(ord("R")) {
	game_restart();
}	

if click { 
	if point_in_rectangle(mouse_x,mouse_y,450,238,510,275) && start == false {
		start = true
	}
	if point_in_rectangle(mouse_x,mouse_y,415,300,545,330) {
		//Add in Settings Later
	}
	if point_in_rectangle(mouse_x,mouse_y,450,360,510,390) {
		game_end();
	}
}

if start == true {
	if a != 1 {
		a += 0.01;	
	} else {
		room_goto(c_opening);	
	}
}
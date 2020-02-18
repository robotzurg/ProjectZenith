if timer != 0 {
	timer -= 1;
} else {
	
	position += 1;
	display = (position-1)
	
	switch position {
		
		case 1:	var amt = 360;
		texty = 450;
		textcol = c_white;
		textdisplay = "A man has fallen into the river in Lego City!" break; //Scene 2 (Scene 1 is set up in the CREATE event)
		
		case 2:  var amt = 360; 
		textdisplay = "Build the rescue helicopter!" break; //Scene 3
		
		case 3:  var amt = 360; 
		textdisplay = "HEY!" break; //Scene 4
		
		case 4: room_goto(rm_overworld) exit; //End of Scene
		
	}
	
	timer = amt;
}

if timer > 30 {
	if texta < 1 {
		texta += 0.035;	
	}
} else {
	texta -= 0.05;	
}

if mouse_check_button_pressed(mb_right) {
	room_goto(rm_overworld) //Skip cutscene
}

	
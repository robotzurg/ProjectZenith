if timer != 0 {
	timer -= 1;
} else {
	
	position += 1;
	display = (position-1)
	
	switch position {
		
		case 1:	var amt = 360;
		texty = 450;
		textcol = c_white;
		textdisplay = "There once lived a race of shadow people." break; //Scene 2 (Scene 1 is set up in the CREATE event)
		
		case 2:  var amt = 360; 
		textdisplay = "Then their houses burned down :(" break; //Scene 3
		
		case 3:  var amt = 360; 
		textdisplay = "You must save them!" break; //Scene 4
		
		case 4: room_goto(testroom) exit; //End of Scene
		
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
	room_goto(testroom) //Skip cutscene
}

	
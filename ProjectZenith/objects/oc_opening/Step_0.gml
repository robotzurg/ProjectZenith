if timer != 0 {
	timer -= 1;
} else {
	
	position += 1;
	display = (position-1)
	
	switch position {
		
		case 1:	var amt = 360;
		texty = 450;
		textcol = c_white;
		textdisplay = "The time is 20XX. The war against the demons has raged on for nearly 10 years now." break; //Scene 2 (Scene 1 is set up in the CREATE event)
		
		case 2:  var amt = 360; 
		textdisplay = "The humans are at a disadvantage, however, they have one last trick up their sleeve." break; //Scene 3
		
		case 3:  var amt = 360; 
		textdisplay = "Chad will save the land. If he cannot, the end for the humans will have arrived." break; //Scene 4
		
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

	
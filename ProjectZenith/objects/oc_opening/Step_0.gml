if timer != 0 {
	timer -= 1;
} else {
	position += 1;
	switch position {
		case 1:	var amt = 360;
		display = 0;
		texty = 450;
		textdisplay = "There once lived a race of shadow people." break;
		case 2:  var amt = 360; 
		display = 1;
		textdisplay = "Then their houses burned down :(" break;
		case 3: room_goto(testroom) exit;
	}
	timer = amt;
}
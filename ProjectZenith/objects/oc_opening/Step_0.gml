if timer != 0 {
	timer -= 1;
} else {
	position += 1;
	switch position {
		case 1:	var amt = 240;
		display = 0;
		texty = 400;
		textdisplay = "There once lived a race of shadow people." break;
		case 2:  var amt = 720; 
		display = 1;break;
		case 3: room_goto(testroom) exit;
	}
	timer = amt;
}
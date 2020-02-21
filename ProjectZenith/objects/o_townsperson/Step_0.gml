if place_meeting(x - (50 * o_player.flipped),y,o_player) && keyboard_check_pressed(ord("E")) && global.dialogue_disable == false {
	var m;
	m[0] = "The demon general... He's right up ahead.";
	m[1] = "This war has been going on for far too long. Are you prepared to stop it?";
	m[2] = "You're the only one who can stop this war, Chad."
	m[3] = "Now go get em!";
	start_dialogue(self,m);
	flipped = o_player.flipped;
}
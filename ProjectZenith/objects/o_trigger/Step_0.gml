if place_meeting(x,y,o_player) {
	switch event {
		case ev.demonking: 
			start_dialogue(o_DemonKing,o_DemonKing.m, ev.demonking);
		break;
	}
	
	instance_destroy();
}
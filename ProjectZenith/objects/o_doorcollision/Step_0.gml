if place_meeting(x,y,o_player) && room == rm_overworld {
	if keyboard_check_pressed(ord("E")) {
		trans_to_room(transitionto,"run1");
	}
	show_popup = true;		
} else {
	show_popup = false;	
}

if place_meeting(x,y,o_player) && (room = rm_house or room = rm_castle) {
	trans_to_room(transitionto,"run1");	
}
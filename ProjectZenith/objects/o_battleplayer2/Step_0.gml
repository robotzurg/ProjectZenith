if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,self) {
	global.charfocus = o_battleplayer2;
	o_BattleEngine.menu_open = "none";
}

if position_meeting(mouse_x,mouse_y,o_battleplayer2) {
	image_index = 1;	
} else {
	image_index = 0;	
}
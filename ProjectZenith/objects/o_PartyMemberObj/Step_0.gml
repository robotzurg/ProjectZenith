if position_meeting(mouse_x,mouse_y,self) && (mouse_check_button(mb_left)) {
	x = mouse_x;
	y = mouse_y;
	grabbed = true;
} else {
	grabbed = false;	
	x = defx
	y = defy
}
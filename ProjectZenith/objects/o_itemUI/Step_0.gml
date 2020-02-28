if (live_call()) return live_result;
if position_meeting(mouse_x,mouse_y,self) && mouse_check_button_pressed(mb_left) {
	FOCPLR.selection = "item";
	FOCPLR.itemselected = ID;
}
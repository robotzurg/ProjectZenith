if (live_call()) return live_result;

//Leave the party select menu and activate all the instances again
var click = (mouse_check_button(mb_left))
if keyboard_check_pressed(vk_escape) {
	instance_destroy();	
	instance_activate_all()
}
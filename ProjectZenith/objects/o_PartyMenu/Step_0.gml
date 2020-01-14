if (live_call()) return live_result;

//Leave the party select menu and activate all the instances again
if keyboard_check_pressed(vk_escape) {
	instance_destroy();	
	instance_activate_all()
}
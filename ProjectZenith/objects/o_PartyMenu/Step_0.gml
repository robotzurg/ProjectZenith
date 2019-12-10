if (live_call()) return live_result;
if keyboard_check_pressed(vk_escape) {
	instance_destroy();	
	instance_activate_all()
}
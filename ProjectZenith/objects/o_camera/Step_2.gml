if (live_call()) return live_result;
//Get current camera position
var camX = camera_get_view_x(camera)
var camY = camera_get_view_y(camera)
var camW = camera_get_view_width(camera);
var camH = camera_get_view_height(camera);

//Panning
if mouse_check_button(mb_middle) {
	var move_x = device_global.d_mouse_x_to_gui(0) - global.d_mouse_x_previous;	
	var move_y = device_global.d_mouse_y_to_gui(0) - global.d_mouse_y_previous;	
	
	camX -= move_x;
	camY -= move_y;
}
else {
//Set target camera position
var targetX = o_player.x - camW/2;
var targetY = o_player.y - camH/2-50;

targetX = clamp(targetX, 0, room_width - camW);
targetY = clamp(targetY, 0, room_height - camH);

camX = lerp(camX, targetX, CAM_SMOOTH);
camY = lerp(camY, targetY, CAM_SMOOTH);
}

var wheel = mouse_wheel_down() - mouse_wheel_up();
if (wheel != 0) {
	wheel *= 0.2;
	
	//Add to size
	var addW = camW * wheel;
	var addH = camH * wheel;
	
	camW += addW
	camH += addH
	show_debug_message(camW);
	show_debug_message(camH);

	//Position
	camX -= addW / 2;
	camY -= addH / 2;
}

//Apply camera position
camera_set_view_pos(camera, camX, camY);
camera_set_view_size(camera, camW, camH);

global.d_mouse_x_previous = device_global.d_mouse_x_to_gui(0);
global.d_mouse_y_previous = device_global.d_mouse_y_to_gui(0);


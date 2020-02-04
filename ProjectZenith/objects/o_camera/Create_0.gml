#macro RES_W 960
#macro RES_H 540
#macro RES_SCALE 1

#macro CAM_SMOOTH 0.1

view_enabled = true;
view_visible[0] = true;
global.zoom = 0;
zoom = false;

// Create camera
camera = camera_create_view(0, 0, RES_W, RES_H);

view_set_camera(0, camera);

// Resize window & application surface
window_set_size(RES_W * RES_SCALE, RES_H * RES_SCALE);
surface_resize(application_surface, RES_W * RES_SCALE, RES_H * RES_SCALE);

display_set_gui_size(RES_W, RES_H);

//Center Window
var display_width = display_get_width();
var display_height = display_get_height();

var window_width = RES_W * RES_SCALE;
var window_height = RES_H * RES_SCALE;

window_set_position(display_width/2 - window_width/2, display_height/2 - window_height/2);

//Set camera position
var camW = camera_get_view_width(camera);
var camH = camera_get_view_height(camera);
if room = testroom {
var targetX =o_player.x - camW/2;
var targetY = o_player.y - camH/2-50;
} else {
	var targetX = 0
	var targetY = 0
}

camera_set_view_pos(camera, targetX, targetY);

global.d_mouse_x_previous = device_mouse_x_to_gui(0)
global.d_mouse_y_previous = device_mouse_y_to_gui(0);

show_debug_message("camera created.");
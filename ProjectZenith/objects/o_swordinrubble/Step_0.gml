if disable != true {
if place_meeting(x,y,o_player) && keyboard_check_pressed(ord("E")) {
	rise = true;
}

if rise == true {
	y -= 0.25;
	a += 0.01;
	global.state = "battle";
	
	if a >= 1 {
		rise = false;	
		a = 0;
		with o_player {
			draw_fade_text_ext(x,y-30,"Blood Sword obtained.",1,1,0,c_red,0.1,0.005);	
		}
		image_alpha = 0;
		disable = true;
	}
}	
}

if !instance_exists(o_fadetext) && disable == true {
	global.state = "platformer";	
}
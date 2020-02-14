var key_left = keyboard_check(ord("A"));
var key_right = keyboard_check(ord("D"))
var key_jump = keyboard_check(vk_space);

if global.state == "platformer" && global.dialogue_disable == false {
	
hspd = (key_right - key_left) * maxhspd;

show_debug_message(hspd);

if (key_jump) && (on_ground) {
	vspd = jump_height;
	on_ground = false;
}

if hspd != 0 {
	flipped = sign(hspd);
}


if place_meeting(x+hspd,y,o_collision) {
        while !place_meeting(x+sign(hspd),y,o_collision) {
                 x += sign(hspd);
        }
        hspd = 0;
}

x += hspd;


if place_meeting(x,y+vspd,o_collision) {
        while !place_meeting(x,y+sign(vspd),o_collision) {
                 y += sign(vspd);
        }
        vspd = 0;
		on_ground = true;
}

y += vspd;

vspd = vspd + grav;

}

if instance_exists(o_sign) {
	if position_meeting(x,y,o_sign) {
		o_sign.show_popup = true;	
	} else {
		o_sign.show_popup = false;	
	}
}
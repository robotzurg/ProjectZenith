var key_left = keyboard_check(ord("A"));
var key_right = keyboard_check(ord("D"))
var key_jump = keyboard_check(vk_space);

if global.state == "platformer" && global.dialogue_disable == false {
if (key_left) {
	hspd = -maxhspd;
} else if (key_right) {
	hspd = maxhspd;	
} else if (key_left) && (key_right) {
	hspd = 0;	
} else {
	hspd = 0;	
}

if hspd != 0 {
	flipped = sign(hspd);
}

if (key_jump) && (on_ground) {
	vspd = jump_height;
	on_ground = false;
}

vspd = vspd + grav;

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

}
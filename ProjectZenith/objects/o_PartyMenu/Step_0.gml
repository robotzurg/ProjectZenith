if (live_call()) return live_result;

//Update positions (because of mouse_x and mouse_y being dynamic)
p1colx1 = (grabbed[0] = true) ? mouse_x : 181
p1colx2 =  (grabbed[0] = true) ? mouse_x : 278
p1coly1 =  (grabbed[0] = true) ? mouse_y : 144
p1coly2 =  (grabbed[0] = true) ? mouse_y : 294

/*p2colx1 = (grabbed[1] = true) ? mouse_x : 431
p2colx2 =  (grabbed[1] = true) ? mouse_x : 528
p2coly1 =  (grabbed[1] = true) ? mouse_y : 144
p2coly2 =  (grabbed[1] = true) ? mouse_y : 294

p3colx1 = (grabbed[2] = true) ? mouse_x : 681
p3colx2 =  (grabbed[2] = true) ? mouse_x : 778
p3coly1 =  (grabbed[2] = true) ? mouse_y : 144
p3coly2 =  (grabbed[2] = true) ? mouse_y : 294*/

par1x = mouse_x;
par1y = mouse_y;
par2x = mouse_x;
par2y = mouse_y;
par3x = mouse_x;
par3y = mouse_y;

var click = (mouse_check_button_pressed(mb_left))
if keyboard_check_pressed(vk_escape) {
	instance_destroy();	
	instance_activate_all()
}

if point_in_rectangle(mouse_x,mouse_y,p1colx1,p1coly1,p1colx2,p1coly2) {
	if click { grabbed[0] = true; } else { grabbed[0] = false; }
} else {
	grabbed[0] = false;	
}

/*if point_in_rectangle(mouse_x,mouse_y,p2colx1,p2coly1,p2colx2,p2coly2) {	
	if click { grabbed[1] = true; } else { grabbed[1] = false; }
} else {
	grabbed[1] = false;	
}

if point_in_rectangle(mouse_x,mouse_y,p3colx1,p3coly1,p3colx2,p3coly2) {
	if click { grabbed[2] = true; } else { grabbed[2] = false; }
} else {
	grabbed[2] = false;	
}*/
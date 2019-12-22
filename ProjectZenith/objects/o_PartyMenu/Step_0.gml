if (live_call()) return live_result;

//Update positions (because of mouse_x and mouse_y being dynamic)
p1colx1 = (grabbed[0] = true) ? mouse_x : 181
p1colx2 =  (grabbed[0] = true) ? mouse_x : 278
p1coly1 =  (grabbed[0] = true) ? mouse_y : 144
p1coly2 =  (grabbed[0] = true) ? mouse_y : 294

p2colx1 =  (grabbed[1] = true) ? mouse_x : 431
p2colx2 =  (grabbed[1] = true) ? mouse_x : 528
p2coly1 =  (grabbed[1] = true) ? mouse_y : 144
p2coly2 =  (grabbed[1] = true) ? mouse_y : 294

p3colx1 = (grabbed[2] = true) ? mouse_x : 681
p3colx2 =  (grabbed[2] = true) ? mouse_x : 778
p3coly1 =  (grabbed[2] = true) ? mouse_y : 144
p3coly2 =  (grabbed[2] = true) ? mouse_y : 294

if disable[0] = false {
par1x = (grabbed[0] = true) ? mouse_x : room_width/2-250
par1y = (grabbed[0] = true) ? mouse_y : room_height/2-50
} 

if disable[1] = false {
par2x = (grabbed[1] = true) ? mouse_x : room_width/2
par2y = (grabbed[1] = true) ? mouse_y : room_height/2-50
}

if disable[2] = false {
par3x = (grabbed[2] = true) ? mouse_x : room_width/2+250
par3y = (grabbed[2] = true) ? mouse_y : room_height/2-50
}

var click = (mouse_check_button(mb_left))
if keyboard_check_pressed(vk_escape) {
	instance_destroy();	
	instance_activate_all()
}

if !(point_in_rectangle(mouse_x,mouse_y,25,365,935,515)) {
if point_in_rectangle(mouse_x,mouse_y,p1colx1,p1coly1,p1colx2,p1coly2) {
	if (click) && grabbed[1] == false && grabbed[2] == false && disable[0] == false { grabbed[0] = true; } else { grabbed[0] = false; }
} else {
	grabbed[0] = false;	
}

if point_in_rectangle(mouse_x,mouse_y,p2colx1,p2coly1,p2colx2,p2coly2) {	
	if (click) && grabbed[0] == false && grabbed[2] == false && disable[1] == false { grabbed[1] = true; } else { grabbed[1] = false; }
} else {
	grabbed[1] = false;	
}

if point_in_rectangle(mouse_x,mouse_y,p3colx1,p3coly1,p3colx2,p3coly2) {
	if (click) && grabbed[0] == false && grabbed[1] == false && disable[2] == false { grabbed[2] = true; } else { grabbed[2] = false; }
} else {
	grabbed[2] = false;	
}
}

if mouse_check_button_released(mb_left) {
	
	if point_in_rectangle(mouse_x,mouse_y,25,365,935,515) && grabbed[0] = true or grabbed[1] = true or grabbed[2] = true {
		//Snap to position
		if grabbed[0] == true {
			disable[0] = true;
			par1x = 90 + 90 * ds_list_size(global.extraparty);
			par1y = 440;
			ds_list_add(global.extraparty,global.currentparty[| 0]);
			ds_list_mark_as_map(global.extraparty,ds_list_size(global.extraparty)-1);
			ds_list_replace(global.currentparty,0,global.party_members[| char.none]);
		}
		if grabbed[1] == true {
			disable[1] = true;
			par2x = 90 + 90 * ds_list_size(global.extraparty);
			par2y = 440;
			ds_list_add(global.extraparty,global.currentparty[| 1]);
			ds_list_mark_as_map(global.extraparty,ds_list_size(global.extraparty)-1);
			ds_list_replace(global.currentparty,1,global.party_members[| char.none]);
		}
		if grabbed[2] == true {
			disable[2] = true;
			par3x = 90 + 90 * ds_list_size(global.extraparty);
			par3y = 440;
			ds_list_add(global.extraparty,global.currentparty[| 2]);
			ds_list_mark_as_map(global.extraparty,ds_list_size(global.extraparty)-1);
			ds_list_replace(global.currentparty,2,global.party_members[| char.none]);
		}
	}
}

//Check if a player is moved into the main box
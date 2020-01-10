if (live_call()) return live_result;

image_xscale = scale;
image_yscale = scale;

scale = (picked_up && global.holding == partyID) ? lerp(scale,1,0.5) : lerp(scale,1.5,0.5); //If picked_up is true, set scale to 1, otherwise set scale to 1.5.

held_click = mouse_check_button(mb_left);

if (held_click) && position_meeting(mouse_x,mouse_y,self) && global.holding = -1 {
	picked_up = true;
	global.holding = partyID;
}

if mouse_check_button_released(mb_left) && picked_up == true {
	picked_up = false;
	global.holding = -1;
	if point_in_rectangle(mouse_x,mouse_y,25,365,935,515) && backstock == false {
		ds_list_add(global.extraparty,global.currentparty[| partyID]);
		ds_list_mark_as_map(global.extraparty,ds_list_size(global.extraparty)-1);
		ds_list_replace(global.currentparty,partyID,global.party_members[| char.none]);
		backstock = true;
		extrapartypos = ds_list_size(global.extraparty)-1;
		ds_size_at_drop = ds_list_size(global.extraparty);
		show_debug_message(extrapartypos);
	} else {
		backstock = false;	
		ds_list_replace(global.currentparty,partyID,global.party_members[| ID]);
		ds_list_mark_as_map(global.currentparty,partyID);
		ds_list_delete(global.extraparty,ds_list_find_value(global.extraparty,partyID));
		extrapartypos = -1;
	}
}

if picked_up == true {
	x = mouse_x;
	y = mouse_y;
}

if picked_up == false {
	if backstock == false {
		switch (partyID) {
			case 0: x = room_width/2-250 y = room_height/2-50; break;
			case 1: x = room_width/2 y = room_height/2-50; break; 
			case 2: x = room_width/2+250 y = room_height/2-50; break;
		}
	} else {
		x =  90 + 90 * (extrapartypos);
		y = 440;
		scale = 1;	
		
		//Readjust extrapartypos if something is taken out
		if ds_list_size(global.extraparty) != ds_size_at_drop {
			extrapartypos -= 1;
			ds_size_at_drop -= 1;
		}
	}
}

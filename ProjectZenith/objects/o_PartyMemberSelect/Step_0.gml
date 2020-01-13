if (live_call()) return live_result;

image_xscale = scale;
image_yscale = scale;
if partyID != -1 {
	partyID = ds_list_find_value(global.currentparty,ID)
	partyID = partyID[? "id"];
}
show_debug_message(partyID);

held_click = mouse_check_button(mb_left);

if (held_click) && position_meeting(mouse_x,mouse_y,self) && global.holding = -1 {
	picked_up = true;
	global.holding = partyID;
}

if mouse_check_button_released(mb_left) && picked_up == true {
	picked_up = false;
	global.holding = -1;
	if point_in_rectangle(mouse_x,mouse_y,25,365,935,515) && backstock == false && global.partycount > 1 {
		ds_list_add(global.extraparty,ID);
		ds_list_replace(global.currentparty,partyID,0);
		partyID = -1
		for (var i=0; i<ds_list_size(global.currentparty)-1; i++) {
			if global.currentparty[| i] == 0 {
				var map = global.currentparty[| i+1];
				//show_debug_message(map);
				var mapID = map[? "id"]
				ds_list_replace(global.currentparty,i+1,0);
				ds_list_replace(global.currentparty,i,global.party_members[| mapID]);
			}
		}
		global.partycount -= 1;
		backstock = true;
	} else if backstock == true {
		
		 if point_in_rectangle(mouse_x,mouse_y,150,90,305,350) {
			backstock = false;	
			ds_list_replace(global.currentparty,0,global.party_members[| ID]);
			ds_list_mark_as_map(global.currentparty,0);
			partyID = 0;
			ds_list_delete(global.extraparty,ds_list_find_index(global.extraparty,ID));
			global.partycount += 1;
		}
		
		else if point_in_rectangle(mouse_x,mouse_y,400,90,555,350) {
			backstock = false;	
			ds_list_replace(global.currentparty,1,global.party_members[| ID]);
			ds_list_mark_as_map(global.currentparty,0);
			partyID = 1;
			ds_list_delete(global.extraparty,ds_list_find_index(global.extraparty,ID));
			global.partycount += 1;
		}
		
		else if point_in_rectangle(mouse_x,mouse_y,650,90,805,350) {
			backstock = false;	
			ds_list_replace(global.currentparty,2,global.party_members[| ID]);
			ds_list_mark_as_map(global.currentparty,2);
			partyID = 2;
			ds_list_delete(global.extraparty,ds_list_find_index(global.extraparty,ID));
			global.partycount += 1;
		} 
	}
}

scale = (picked_up && global.holding == partyID) ? lerp(scale,1,0.5) : lerp(scale,1.5,0.5); //If picked_up is true, set scale to 1, otherwise set scale to 1.5.

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
		x = 90 + 90 * (extrapartypos);
		y = 440;
		scale = 1;	
	}
}

if !instance_exists(o_PartyMenu) {
	instance_destroy();
}
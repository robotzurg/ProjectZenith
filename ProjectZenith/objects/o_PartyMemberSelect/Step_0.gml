if (live_call()) return live_result;
if o_PartyMenu.menufoc == "party" {
if partyID != -1 {
	var map_ = global.party_members[| ID];
	partyID = ds_list_find_index(global.currentparty, map_[? "map"]);
} else {
	var map_ = global.party_members[| ID];
	extrapartypos = (ds_list_find_index(global.extraparty, map_[? "id"]))
}

held_click = mouse_check_button(mb_left);

if (held_click) && position_meeting(mouse_x,mouse_y,self) && global.holding == -2 {
	global.holding = partyID;
	picked_up = true;
}

if mouse_check_button_released(mb_left) && picked_up == true {
	picked_up = false;
	global.holding = -2;
	if point_in_rectangle(mouse_x,mouse_y,25,365,935,515) && backstock == false && global.partycount > 1 {
		var _val = global.currentparty[| partyID];
		var _valID = _val[? "id"];
		ds_list_delete(global.currentparty, partyID);
		ds_list_add(global.extraparty,_valID);
		ds_list_add(global.currentparty, 0);
		extrapartypos = (ds_list_find_index(global.extraparty, map_[? "id"]))
		global.partycount -= 1;
		backstock = true;
		partyID = -1;
	} else if backstock == true {
		
		 if point_in_rectangle(mouse_x,mouse_y,150,90,305,350) {
			backstock = false;	
			ds_list_replace(global.currentparty,0,global.party_members[| ID]);
			ds_list_mark_as_map(global.currentparty,0);
			var _val = global.currentparty[| partyID];
			var _valID = _val[? "id"];
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


if backstock == false {
	scale = (global.holding == partyID) ? lerp(scale,1,0.5) : lerp(scale,1.5,0.5); //If picked_up is true, set scale to 1, otherwise set scale to 1.5.
}

image_xscale = scale;
image_yscale = scale;

if picked_up == true {
	x = mouse_x;
	y = mouse_y;
	depth = -50;
	popup = false
} else {
	if backstock == false {
		switch (partyID) {
			case 0: x = room_width/2-250 y = room_height/2-50; break;
			case 1: x = room_width/2 y = room_height/2-50; break;
			case 2: x = room_width/2+250 y = room_height/2-50; break;
		}
	} else {
		x = 90 + 90 * (extrapartypos)
		y = 440;
	}
	depth = 0;
}

//Text Menu pop up
if position_meeting(mouse_x,mouse_y,self) && picked_up == false {
	/*popuptimer += 1;
	if popuptimer == 30 {
		popup = true;	
	}
} else {
	if popup == false && picked_up == false {
		popuptimer -= 4
	} else {
		popuptimer = 0;	
	}
	popup = false;*/
	if mouse_check_button_pressed(mb_right) {
		popup = !popup;		
	}
} else if mouse_check_button_pressed(mb_right) {
	popup = false;	
}

popuptimer = clamp(popuptimer,0,30);

}

if !instance_exists(o_PartyMenu) {
	instance_destroy();
}

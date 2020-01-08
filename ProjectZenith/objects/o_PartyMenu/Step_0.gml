if (live_call()) return live_result;

//Leave the party select menu and activate all the instances again
var click = (mouse_check_button(mb_left))
if keyboard_check_pressed(vk_escape) {
	instance_destroy();	
	instance_activate_all()
}
/* if mouse_check_button_released(mb_left) {
	
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
}*/
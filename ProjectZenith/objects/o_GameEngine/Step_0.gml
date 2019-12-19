if (live_call()) return live_result;
//Restart the Game if R is pressed
if keyboard_check_pressed(ord("R")) {
	game_restart();	
}

//Dim the background if the party menu opens
if instance_exists(o_PartyMenu) {
	backalpha = lerp(backalpha,0.9,0.3);	
} else {
	backalpha = lerp(backalpha,0,0.3);	
}


if !instance_exists(o_PartyMenu) {

//Open the Party Management Menu if Escape is pressed
if keyboard_check_pressed(vk_escape) && !instance_exists(o_PartyMenu) {
	instance_create_depth(x,y,-1500,o_PartyMenu);
	instance_deactivate_all(true);
	instance_activate_object(o_PartyMenu);
	instance_activate_object(obj_gmlive);
}

/* VICTORY SCREEN CODE */

if global.currentturn == "Victory" or global.currentturn == "Results" {
	primy = lerp(primy,150,0.25);
	vicy = lerp(vicy,15,0.25);
	othery = lerp(othery,468,0.25);
	backalpha = lerp(backalpha,1.8,0.25);
} else if global.currentturn == "End" && finishtrans == false {
	primy = lerp(primy,710,0.25);
	vicy = lerp(vicy,-100,0.25);
	othery = lerp(othery,600,0.25);
	backalpha = lerp(backalpha,1.8,0.25);
	if alarm[2] < 0 && room = rm_battle {
	alarm[2] = 30;
	}
}

if finishtrans == true {
	primy = lerp(primy,0,0.25);
	vicy = lerp(vicy,-100,0.25);
	othery = lerp(othery,600,0.25);
	backalpha = lerp(backalpha,0,0.25);
	if primy == 0 {
		finishtrans = false;	
	}
}

if room == rm_battle {

//Victory Player Focus code (250 bottom left, 480 middle, 730 top right)
if global.currentturn == "Victory" {
	
	if xpfilled = false && mouse_check_button_pressed(mb_left) {
		fillxp = true;	
	}
	
	if mouse_check_button_pressed(mb_left) && xpfilled = true {
		if vicfocus != global.partycount-1 {
			vicfocus += 1;
			xpdelay = 60;
			fillxp = false;
			xpfilled = false;
		} else {
			global.currentturn = (global.partycount = 1) ? ("End") : ("Results");
			if global.partycount = 1 { global.battledone = true; xpdelay = 60; }
		}
			show_debug_message("Vicfocus: " + string(vicfocus));
			show_debug_message("global.partycount: " + string(global.partycount));
			show_debug_message("global.currentturn: " + string(global.currentturn));
		}
		



	//Keep the victory player movements along the angles, and move them based on vicfocus
	for (var i=0;i<global.partycount;i++) {
		var angle = darctan(primy / 800);
		l[i] = lerp(l[i], 200*(vicfocus - i), 0.2)
		global.partyvicx[i] = room_width/2+lengthdir_x(l[i],angle);
		global.partyvicy[i] = room_height/2+lengthdir_y(l[i],angle);
		global.partyvicscale[i] = lerp(global.partyvicscale[i], 1+(vicfocus == i), 0.2);    
	}
	
	
	
} else if global.currentturn == "Results" {
	vicfocus = (global.partycount);
	for (var i=0;i<global.partycount;i++) {
		var angle = darctan(primy / 800);
		l[i] = lerp(l[i], 200*(vicfocus - i)-400, 0.2)
		global.partyvicx[i] = room_width/2 + (lengthdir_x(l[i],angle))
		global.partyvicy[i] = room_height/2 + (lengthdir_y(l[i],angle))
		global.partyvicscale[i] = lerp(global.partyvicscale[i], 1.5, 0.2);    
	}
	if mouse_check_button_pressed(mb_left) {
		global.currentturn = "End";
		global.battledone = true;
		xpdelay = 60;
	}
} //End of global.currentturn == "Results"
} //End of room == rm_battle

/*END OF VICTORY SCREEN CODE*/

} //End of !instance_exists(o_PartyMenu)
if (live_call()) return live_result;
if keyboard_check_pressed(ord("R")) {
	game_restart();	
}

if global.currentturn = "Victory" {
	primy = lerp(primy,150,0.25);
	vicy = lerp(vicy,15,0.25);
	othery = lerp(othery,468,0.25);
	backalpha = lerp(backalpha,0.9,0.25);
} else if global.currentturn = "End" && finishtrans == false {
	primy = lerp(primy,700,0.25);
	vicy = lerp(vicy,-100,0.25);
	othery = lerp(othery,600,0.25);
	if alarm[2] < 0 && room = rm_battle {
	alarm[2] = 30;
	}
}

if finishtrans = true {
	primy = lerp(primy,0,0.25);
	vicy = lerp(vicy,-100,0.25);
	othery = lerp(othery,600,0.25);
	backalpha = lerp(backalpha,0,0.25);
	if primy = 0 {
		finishtrans = false;	
	}
}

if room = rm_battle {

/*if global.currentturn == "Results"  {
	global.currentturn = "End";
	global.battledone = true;
}*/

//Victory Player Focus code (250 bottom left, 480 middle, 730 top right)
if global.currentturn = "Victory" {
		
		if mouse_check_button_pressed(mb_left) {
			if vicfocus != global.partycount-1 {
				vicfocus += 1;
				xpdelay = 60;
			} else {
				global.currentturn = "Results";
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
	
} else if global.currentturn = "Results" {
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
	}
}
}
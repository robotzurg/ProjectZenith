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

if vicfocus = 2 && mouse_check_button_pressed(mb_left) {
	global.currentturn = "End";
	global.battledone = true;
}

//Victory Player Focus code (250 bottom left, 480 middle, 730 top right)
if global.currentturn = "Victory" or global.currentturn = "Results" {
		
		if mouse_check_button_pressed(mb_left) {
			if vicfocus != global.partycount-1 && vicfocus != 2 {
				vicfocus += 1;
				xpdelay = 60;
				show_debug_message("Vicfocus: " + string(vicfocus));
				show_debug_message("global.partycount: " + string(global.partycount));
			} else {
				global.currentturn = "Results";
				vicfocus = 2;
			}
		}

	
	
	
	if global.currentturn = "Victory" {
	switch (vicfocus) {
	case 0:	
		global.partyvicx[0] =  lerp(global.partyvicx[0],480,0.2);
		global.partyvicy[0] = lerp(global.partyvicy[0],room_height/2,0.2);
		global.partyvicscale[0] = lerp(global.partyvicscale[0],2,0.2);
		global.partyvicx[1] = lerp(global.partyvicx[1],250,0.2);	
		global.partyvicy[1] = lerp(global.partyvicy[1],room_height/2+100,0.2);
		global.partyvicscale[1] = lerp(global.partyvicscale[1],1,0.2); break;
	case 1: 
		global.partyvicx[0] =  lerp(global.partyvicx[0],730,0.2);
		global.partyvicy[0] = lerp(global.partyvicy[0],room_height/2-100,0.2);
		global.partyvicscale[0] = lerp(global.partyvicscale[0],1,0.2);
		global.partyvicx[1] = lerp(global.partyvicx[1],480,0.2);	
		global.partyvicy[1] = lerp(global.partyvicy[1],room_height/2,0.2);
		global.partyvicscale[1] = lerp(global.partyvicscale[1],2,0.2); break;
	}
	} else {
		global.partyvicx[0] =  lerp(global.partyvicx[0],580,0.2);
		global.partyvicy[0] = lerp(global.partyvicy[0],room_height/2,0.2);
		global.partyvicscale[0] = lerp(global.partyvicscale[0],1,0.2);
		global.partyvicx[1] = lerp(global.partyvicx[1],380,0.2);	
		global.partyvicy[1] = lerp(global.partyvicy[1],room_height/2,0.2);
		global.partyvicscale[1] = lerp(global.partyvicscale[1],1,0.2); 
	}
}
}
if (live_call()) return live_result;
if keyboard_check_pressed(ord("R")) {
	game_restart();	
}

if global.currentturn = "Victory" {
	primy = lerp(primy,200,0.25);
	vicy = lerp(vicy,30,0.25);
	othery = lerp(othery,440,0.25);
	backalpha = lerp(backalpha,0.9,0.25);
	show_debug_message(primy);
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
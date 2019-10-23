if room_switch_timer <= 0 {
	room_goto(rm_battle);
	y2[0] = lerp(y2[0],0,0.2);
	y1[1] = lerp(y1[1],room_height,0.2);
} else {
	if room_switch_timer = 0 {
	room_switch_timer -= 1;
	}
}
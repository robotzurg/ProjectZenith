if room = rm_battle {
	for (var i=0; i<global.partycount; i++) {
		l[i] = 0;	
	}
	
	for (var i=0;i<global.partycount;i++) {
		var angle = darctan(primy / 800);
		l[i] = lerp(l[i], 200*(vicfocus - i), 0.2)
		global.partyvicx[i] = room_width/2+lengthdir_x(l[i],angle);
		global.partyvicy[i] = room_height/2+lengthdir_y(l[i],angle);
		global.partyvicscale[i] = 1*(vicfocus+1)
	}
	
}

xpdelay = 60;
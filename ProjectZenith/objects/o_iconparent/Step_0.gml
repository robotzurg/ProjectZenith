if point_in_rectangle(global.d_mouse_x,global.d_mouse_y,415,450,475,510) && object_index != o_potionicon {
	if animate = false && looped = false {
		animate = true;	
		looped = true;
	}
	image_speed = animate
} else if point_in_rectangle(global.d_mouse_x,global.d_mouse_y,725,450,875,510) && object_index = o_potionicon {
	image_speed = 1;	
} else {
	image_speed = 0;	
	image_index = 0;
	animate = false;
	looped = false;
}

if o_BattleEngine.menu_open = "none" {
	image_alpha = 1;
} else {
	image_alpha = 0;	
}

if object_index != o_potionicon && o_BattleEngine.menu_open = "none" && global.currentturn = "Players" {
	if object_index = o_BattleEngine.plrID[global.charfocus].wepequipped {
		image_alpha = 1;	
	} else {
		image_alpha = 0;	
	}
} 

if object_index = o_potionicon {
y = o_BattleEngine.itmy1+15;
} else {
y = o_BattleEngine.atky1+15;
}
if (live_call()) return live_result;
var click = mouse_check_button_pressed(mb_left);
var hoverover = global.charfocus.textboxsprhover;
var normboxspr  = global.charfocus.textboxspr;

if point_in_rectangle(mouse_x,mouse_y,0,1,80,60) {
	runselect = hoverover;
	if (click) {
		trans_to_room(testroom,"run1");
	}
} else {
	runselect = normboxspr
}

if menu_open = "none" {
if point_in_rectangle(mouse_x,mouse_y,415,450,475,510) {
	atkselect = hoverover;
	if (click) {
		if global.charfocus.selection = "none" {
			global.charfocus.selection = "attack";
		} else {
			global.charfocus.selection = "none";	
		}
	}
} else {
	if global.charfocus.selection != "attack" {
		atkselect = normboxspr;
	}
}

if point_in_rectangle(mouse_x,mouse_y,525,450,675,510) {
	sklselect = hoverover;
	if (click) {
		menu_open = "skills";
		sklselect = normboxspr;
	}
} else {
	sklselect = normboxspr;
}

if point_in_rectangle(mouse_x,mouse_y,725,450,875,510) {
	itmselect = hoverover;
	if (click) {
		menu_open = "item";
		itmselect = normboxspr;
	}
} else {
	itmselect = normboxspr;
}
}

if menu_open != "none" {
if point_in_rectangle(mouse_x,mouse_y,270,425,305,460) {
	if (click) {
		menu_open = "none";
	}
}
}

switch(menu_open) {
	case "skills": 
	sklx1 = lerp(sklx1,265,0.4);
	skly1 = lerp(skly1,420,0.4);
	sklx2 = lerp(sklx2,955,0.4);
	skly2 = lerp(skly2,540,0.4);
	break;
	case "item": 
	itmx1 = lerp(itmx1,265,0.4);
	itmy1 = lerp(itmy1,420,0.4);
	itmx2 = lerp(itmx2,955,0.4);
	itmy2 = lerp(itmy2,540,0.4);
	break;
	case "none": 
	sklx1 = lerp(sklx1,525,0.4);
	skly1 = lerp(skly1,450,0.4);
	sklx2 = lerp(sklx2,675,0.4);
	skly2 = lerp(skly2,510,0.4);
	
	itmx1 = lerp(itmx1,725,0.4);
	itmy1 = lerp(itmy1,450,0.4);
	itmx2 = lerp(itmx2,875,0.4);
	itmy2 = lerp(itmy2,510,0.4);
}

//Character focus movement
switch(global.charfocus) {
	case o_battleplayer: 
		global.charfocus.x = lerp(global.charfocus.x,200,0.3);
		o_battleplayer2.x = lerp(o_battleplayer2.x,160,0.3); break;
	
	case o_battleplayer2: 
		global.charfocus.x = lerp(global.charfocus.x,200,0.3);
		o_battleplayer.x = lerp(o_battleplayer.x,160,0.3); break;
	
	default:
		o_battleplayer.x = lerp(o_battleplayer.x,160,0.3);
		o_battleplayer2.x = lerp(o_battleplayer2.x,160,0.3); break;
}

//Enemy focus movement
/*for (var i=0;i<o_BattleEngine.enemycount;i++) {
	var enemy;
	enemy[i] = o_BattleEngine.enemyinst[i];
}
	
if global.charfocus = enemy[0] {
		
	global.charfocus.x = lerp(global.charfocus.x,200,0.3);
	enemy[1].x = lerp(enemy[1].x,160,0.3); 
		
} else if global.charfocus = enemy[1] {
		
	global.charfocus.x = lerp(global.charfocus.x,200,0.3);
	enemy[0].x = lerp(enemy[0].x,160,0.3); 
		
} else {
		
	enemy[0].x = lerp(enemy[0].x,160,0.3);
	enemy[1].x = lerp(enemy[1].x,160,0.3); 
		
}*/
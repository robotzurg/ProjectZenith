if (live_call()) return live_result;
var click = mouse_check_button_pressed(mb_left);
var hoverover = global.charfocus.textboxsprhover;
var normboxspr  = global.charfocus.textboxspr;

if global.currentturn = "Players" {
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
	sklx2 = lerp(sklx2,675,0.4);
	itmx1 = lerp(itmx1,725,0.4);
	itmx2 = lerp(itmx2,875,0.4);
}

if global.currentturn = "Players"  && menu_open = "none" {
	atky1 = lerp(atky1,450,0.3);
	atky2 = lerp(atky2,510,0.3);
	skly1 = lerp(skly1,450,0.3);
	skly2 = lerp(skly2,510,0.3);
	itmy1 = lerp(itmy1,450,0.3);
	itmy2 = lerp(itmy2,510,0.3);
} else if global.currentturn = "Enemies" {
	atky1 = lerp(atky1,600,0.3);
	atky2 = lerp(atky2,660,0.3);
	skly1 = lerp(skly1,600,0.3);
	skly2 = lerp(skly2,660,0.3);
	itmy1 = lerp(itmy1,600,0.3);
	itmy2 = lerp(itmy2,660,0.3);
}
//Player focus movement
for (var plr = 0; plr < global.partycount; plr++) {
	if global.charfocus = global.party[plr] {
		global.charfocus.x = lerp(global.charfocus.x,200,0.3);	
	} else {
		global.party[plr].x = lerp(global.party[plr].x,160,0.3);
	}
}

//Enemy focus movement
for (var en = 0; en < global.enemycount; en++) {
	if global.charfocus = global.enemyparty[en] {	
		global.charfocus.x = lerp(global.charfocus.x,720,0.3);
	} else {
		global.enemyparty[en].x = lerp(global.enemyparty[en].x,760,0.3); 
	}
}

if turnsdone == global.enemycount && global.currentturn == "Enemies" {
	global.currentturn = "Players";
	global.charfocus = global.party[0];
	turnsdone = totaldead;
}

if totaldead == global.enemycount && global.currentturn != "Victory" && global.currentturn != "End" {
	global.currentturn = "Victory";
}

if mouse_check_button_pressed(mb_left) {
	if global.currentturn = "Victory" {
		global.currentturn = "End";
	}
}
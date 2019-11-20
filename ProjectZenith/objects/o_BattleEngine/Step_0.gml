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
	skly1 = lerp(skly1,450,0.4);
	sklx2 = lerp(sklx2,675,0.4);
	skly2 = lerp(skly2,510,0.4);
	itmx1 = lerp(itmx1,725,0.4);
	itmy1 = lerp(itmy1,450,0.4);
	itmx2 = lerp(itmx2,875,0.4);
	itmy2 = lerp(itmy2,510,0.4);
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

/*//Checking to advance turn back to players
for (var i = 0; i < global.enemycount; i++) {
	if global.enemyparty[i].turndone == true {
		turnsdone += 1;	
		show_debug_message(turnsdone);
	}
}*/

if turnsdone == global.enemycount && global.currentturn == "Enemies" {
	global.currentturn = "Players";
	global.charfocus = global.party[0];
	turnsdone = totaldead;
	
}

if totaldead == global.enemycount {
	global.currentturn = "Victory" //trans_to_room(testroom,"run1");
}

/*if mouse_check_button_pressed(mb_left) {
	switch_ = !switch_
}*/


if global.currentturn = "Victory" {
	primy = lerp(primy,200,0.25);
	vicy = lerp(vicy,30,0.25);
	othery = lerp(othery,440,0.25);
	backalpha = lerp(backalpha,0.9,0.25);
} else {
	primy = lerp(primy,0,0.25);
	vicy = lerp(vicy,-100,0.25);
	othery = lerp(othery,600,0.25);
	backalpha = lerp(backalpha,0,0.25);
}
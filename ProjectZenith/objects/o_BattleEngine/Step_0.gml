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
	btny1 = lerp(btny1,420,0.4);
	sklx2 = lerp(sklx2,955,0.4);
	btny2 = lerp(btny2,540,0.4);
	break;
	case "item": 
	itmx1 = lerp(itmx1,265,0.4);
	btny1 = lerp(btny1,420,0.4);
	itmx2 = lerp(itmx2,955,0.4);
	btny2 = lerp(btny2,540,0.4);
	break;
	case "none": 
	sklx1 = lerp(sklx1,525,0.4);
	sklx2 = lerp(sklx2,675,0.4);
	itmx1 = lerp(itmx1,725,0.4);
	itmx2 = lerp(itmx2,875,0.4);
}

if global.currentturn = "Players"  && menu_open = "none" {
	btny1 = lerp(btny1,450,0.3);
	btny2 = lerp(btny2,510,0.3);
} else if global.currentturn = "Enemies" {
	btny1 = lerp(btny1,600,0.3);
	btny2 = lerp(btny2,660,0.3);
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
	if global.charfocus = global.enemyparty[en] && global.charfocus.dead == false {	
		global.charfocus.x = lerp(global.charfocus.x,720,0.3);
	} else {
		global.enemyparty[en].x = lerp(global.enemyparty[en].x,760,0.3); 
	}
}

if (turnsdone == global.partycount) && global.currentturn == "Players" {
	global.currentturn = "Enemies";
	var enemypick = irandom_range(1,global.enemycount-1);
	global.charfocus = global.enemyparty[enemypick];
	for (var i = 0;i<global.partycount;i++) {
		global.party[i].turndone = false;	
	}
	turnsdone = 0;
}

if totaldead == global.enemycount && global.currentturn != "Victory" && global.currentturn != "End" && global.currentturn != "Results" {
	//Check and change MVP based on the battle
	var mvpcheck;
	for (var ii = 0; ii<global.partycount;ii++) {
		if ii = 0 {
			mvpcheck[ii] = global.party[ii].dmgdealt + global.party[ii].debuffsdealt + global.party[ii].buffsdealt + global.party[ii].finalhitsdealt + (global.party[ii].healthhealed*2);
			global.partyvicMVP = global.party[ii];
		} else {
			mvpcheck[ii] = global.party[ii].dmgdealt + global.party[ii].debuffsdealt + global.party[ii].buffsdealt + global.party[ii].finalhitsdealt + (global.party[ii].healthhealed*2);
			if mvpcheck[ii-1] < mvpcheck[ii] { 
				global.partyvicMVP = global.party[ii];
			}
		}
	//Hand out XP based on multiple factors
	global.partygainedxp[ii] = global.party[ii].dmgdealt*global.enemycount;
	}
	global.currentturn = "Victory";
}
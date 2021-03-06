if (live_call()) return live_result;
//Set data extraction variables
var foc = global.charfocus;
var par = global.currentparty[| foc];

if global.currentturn = "Players" { //If it's the players turn, enable the buttons
	
//Check for clicks on each seperate button

//RUN BUTTON
if click_on_button("run",0,1,80,60) { 
	trans_to_room(rm_overworld,"run1");
	global.battledone = true;
}

//GLITCH BUTTON
if click_on_button("glitch",room_width-100,1,room_width,60) {
	FOCPLR.selection = (FOCPLR.selection = "none") ? ("glitch") : ("none") //If selection = none, set to glitch, otherwise set to none
}

if menu_open = "none" { //Disable these buttons if the menu is open on one
	//ATTACK BUTTON
	if click_on_button("attack",415,450,475,510) {
		FOCPLR.selection = (FOCPLR.selection = "none") ? ("attack") : ("none") //See above
	}

	//SKILLS BUTTON
	if click_on_button("skills",525,450,675,510) {
		menu_open = "skills";
	}

	//ITEMS BUTTON
	if click_on_button("item",725,450,875,510) {
		menu_open = "item";
	}

} else {
	//BACK BUTTON (if a battle menu is open, you can click it to go back to the main buttons)
	if click_on_button("N/A",270,425,305,460) or keyboard_check_pressed(vk_escape) {
		menu_open = "none";
	}
}

} //End of if global.currentturn = "Players"

//Position handling based on the current open menu (for expanding button menus)
switch(menu_open) {
	
	case "skills": 
	sklx1 = lerp(sklx1,265,0.4);
	skly1 = lerp(skly1,420,0.4);
	sklx2 = lerp(sklx2,955,0.4);
	skly2 = lerp(skly2,540,0.4);
	sklselect = par[? "textbox_spr"]
	break;
	
	case "item": 
	itmx1 = lerp(itmx1,265,0.4);
	itmy1 = lerp(itmy1,420,0.4);
	itmx2 = lerp(itmx2,955,0.4);
	itmy2 = lerp(itmy2,540,0.4);
	itmselect = par[? "textbox_spr"]
	break;
	
	case "none":  //Default
	sklx1 = lerp(sklx1,525,0.4);
	sklx2 = lerp(sklx2,675,0.4);
	skly1 = lerp(skly1,450,0.4);
	skly2 = lerp(skly2,510,0.4);
	itmx1 = lerp(itmx1,725,0.4);
	itmx2 = lerp(itmx2,875,0.4);
	itmy1 = lerp(itmy1,450,0.4);
	itmy2 = lerp(itmy2,510,0.4);
	atky1 = lerp(atky1,450,0.4);
	atky2 = lerp(atky2,510,0.4);
	break;
}

//Move buttons out of view if it's the enemies turn
if global.currentturn = "Players"  && menu_open = "none" {
	atky1 = lerp(atky1,450,0.3);
	atky2 = lerp(atky2,510,0.3);
	skly1 = lerp(skly1,450,0.3);
	skly2 = lerp(skly2,510,0.3);
	itmy1 = lerp(itmy1,450,0.3);
	itmy2 = lerp(itmy2,510,0.3);
} else if global.currentturn = "Enemies" {
	atky1 = lerp(atky1,660,0.3);
	atky2 = lerp(atky2,750,0.3);
	skly1 = lerp(skly1,660,0.3);
	skly2 = lerp(skly2,750,0.3);
	itmy1 = lerp(itmy1,660,0.3);
	itmy2 = lerp(itmy2,750,0.3);
}

//Move up the focused player with a lerp
for (var plr = 0; plr < global.partycount; plr++) {
	if global.charfocus == plrID[plr].partyID {
		FOCPLR.x = lerp(FOCPLR.x,200,0.3)
	} else {
		plrID[plr].x = lerp(plrID[plr].x,160,0.3)
	}
}

/*//Move up the focused enemy with a lerp
if global.enemycount != 5 {
for (var en = 0; en < global.enemycount; en++) {
	if global.charfocus == enID[en] && global.charfocus.dead == false {	
		global.charfocus.x = lerp(global.charfocus.x,720,0.3);
	} else {
		enID[en].x = lerp(enID[en].x,760,0.3); 
	}
}
}*/

//If all the players turns are done, pick a random enemy and begin the enemies turns
if (turnsdone == global.partycount-playertotaldead) && global.currentturn == "Players" && enemytotaldead != global.enemycount {
	global.currentturn = "Enemies";
	var enemypick = irandom_range(0,global.enemycount-1);
	global.enemyfocus = enID[enemypick]
	for (var i = 0;i<global.partycount;i++) { //Set all the players turns to done, just in case
		plrID[i].turndone = false;	
	}
	turnsdone = 0; //Reset the turns done for the enemies turns
}

if enemytotaldead == global.enemycount && global.currentturn != "Victory" && global.currentturn != "End" && global.currentturn != "Results" { //If the battle is over but we aren't on the Victory or Results screen yet
	//Check and change MVP based on the battle
	var mvpcheck;
	for (var ii = 0; ii<global.partycount;ii++) {
		if ii = 0 {
			mvpcheck[ii] = plrID[ii].dmgdealt + plrID[ii].debuffsdealt + plrID[ii].buffsdealt + plrID[ii].finalhitsdealt + (plrID[ii].healthhealed*1.5); //Just read it, it's pretty self explanatory lol
			global.partyvicMVP = plrID[ii];
		} else {
			mvpcheck[ii] = plrID[ii].dmgdealt + plrID[ii].debuffsdealt + plrID[ii].buffsdealt + plrID[ii].finalhitsdealt + (plrID[ii].healthhealed*1.5);
			if mvpcheck[ii-1] < mvpcheck[ii] { //If the total number is bigger then the previous total number, set the new MVP!
				global.partyvicMVP = plrID[ii];
			}
		}
	//Hand out XP based on multiple factors
	global.partygainedxp[ii] = (par[? "level"] + plrID[ii].dmgdealt) * ((global.partyvicMVP = plrID[ii]) ? 2 : 1);
	for (var enemies = 0; enemies < global.enemycount; enemies++) {
		global.partygainedxp[ii] += plrID[ii].killedenemy[enemies]*par[? "level"]; //Give XP from enemies that were killed
	}
	global.partydisplayxp[ii] = global.partygainedxp[ii];
	}
	global.currentturn = "Victory";
	
}

//If all party members are dead
if playertotaldead == global.partycount {
	trans_to_room(testroom,"run1");
	global.battledone = true;
}

if item_create = true {
	for (var i=0; i<ds_grid_height(global.regenitems);  i++) {
		var xx = 320 + 64*i
		create_item_ui(xx,465,global.regenitems[# 0, i],global.regenitems);
		if i = ds_grid_height(global.regenitems)-1 { item_create = false; }
	}
}
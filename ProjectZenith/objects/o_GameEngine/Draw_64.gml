///VICTORY SCREEN UI
//Set data extraction variables
var foc = vicfocus
var par = global.currentparty[| foc];

//Draw text whenever we enter a new room
/*if (newroom == true) && room = testroom {
	draw_fade_text_ext(global.window_width/2,global.window_height/2,string(global.currentroom),2,2,0,c_white,0.15,0.008);
	newroom = false;	
}*/
//Add this ^ later

//Draw the dimmed background
draw_set_alpha(backalpha);
draw_rectangle_color(0,0,global.window_width,global.window_height,c_black,c_black,c_black,c_black,false);
draw_set_alpha(1);

//Victory Screen drawing
if room = rm_battle {
if (global.currentturn = "Victory") or (global.currentturn = "End") or (global.currentturn = "Results") { //If the battle is over
for (var i=0;i<global.partycount;i++) { //Do the bottom code for every party member
	if i == vicfocus {
		
		//Draw the focused character
		draw_sprite_ext(o_BattleEngine.plrID[i].sprite_index, 0, global.partyvicx[i], global.partyvicy[i],global.partyvicscale[i],global.partyvicscale[i],0,c_white,1);
		
		draw_set_halign(fa_center); //Center everything
			//Draw details about the character such as MVP, EXP, Name and Level
			if global.partyvicMVP == o_BattleEngine.plrID[i] {
				draw_text_transformed(global.partyvicx[i],global.partyvicy[i]-170,"MVP",1.5,1.5,0);
			}
			draw_text_transformed(global.partyvicx[i],global.partyvicy[i]-130,string(par[? "name"]) + " (Lv. " + string(par[? "level"]) + ")" ,0.7,0.7,0);
			draw_text(global.partyvicx[i],global.partyvicy[i]+125,"EXP +" + string(global.partydisplayxp[i]));
			
			//XP Increase code, it's kind of hard to explain but it works
			if fillxp == false {
				if xpdelay = 0 {
					if global.partygainedxp[i]+o_BattleEngine.plrID[i].currentxp >= o_BattleEngine.plrID[i].currentxp {
						par[? "xp"] += 1.15;
						global.partygainedxp[i] -= 1.15;
						if par[? "xp"] >= par[? "max_xp"] {
							par[? "level"] += 1;
							par[? "xp"] = 0;
							draw_fade_text(global.partyvicx[i]+80,global.partyvicy[i]-80,"Level Up!");
							}
					} else {
						xpfilled = true;
					}
				} else if xpdelay != 0 {
					xpdelay -= 1;
				}
			} else {
				par[? "xp"] += global.partygainedxp[i];
				global.partygainedxp[i] = 0;
				xpdelay = 0;
				for (var ii = 0; par[? "xp"] > 100; ii += 100) {
					par[? "xp"] -= 100;
					par[? "level"] += 1;
				}
				fillxp = false;
				xpfilled = true;
			}
			
			//Draw the XP bar
			var pc = (par[? "xp"] / par[? "max_xp"]) * 100;
			draw_healthbar(global.partyvicx[i]-50,global.partyvicy[i]+110,global.partyvicx[i]+50,global.partyvicy[i]+120,pc,c_gray,c_lime,c_lime,0,true,true);
			
		draw_set_halign(fa_left); //Back to left alignment
		
	} else {
		//Draw the other characters smaller
		draw_sprite_ext(o_BattleEngine.plrID[i].sprite_index, 0, global.partyvicx[i], global.partyvicy[i],global.partyvicscale[i],global.partyvicscale[i],0,c_white,1); //We DON'T use par[? "spr"] as that is reserved for the focused player, not the other players!
		
		//Draw their specific details ONLY if we're on the results screen so nothing is the focus
		if global.currentturn = "Results" {
			//Reset the data extraction variables so we can take from all party members
			var foc = i;
			var par = global.currentparty[| foc];
			
			//Draw details for every haracter
			draw_set_halign(fa_center);
				if global.partyvicMVP == o_BattleEngine.plrID[i] {
					draw_text_transformed(global.partyvicx[i],global.partyvicy[i]-140,"MVP",1.5,1.5,0);
				}
				draw_text_transformed(global.partyvicx[i],global.partyvicy[i]-100,string(par[? "name"]) + " (Lv. " + string(par[? "level"]) + ")" ,0.7,0.7,0); //Battle Player 1 (Lv. 3)
				draw_text_transformed(global.partyvicx[i],global.partyvicy[i]+97,"EXP: " + string(round(par[? "xp"])) + "/" + string(par[? "max_xp"]),0.75,0.75,0); //EXP: 10/100
				draw_text(global.partyvicx[i],global.partyvicy[i]+115,"EXP +" + string(global.partydisplayxp[i])); //EXP +25
				var pc = (par[? "xp"] / par[? "max_xp"]) * 100;
				draw_healthbar(global.partyvicx[i]-50,global.partyvicy[i]+85,global.partyvicx[i]+50,global.partyvicy[i]+95,pc,c_gray,c_lime,c_lime,0,true,true); //Draw XP Barr
			draw_set_halign(fa_left);
		}
	}
} //End of for loop
} //End of if battle is over check
} //End of if room = rm_battle check

//Draw top left white triangle
draw_primitive_begin(pr_trianglelist); //TOP LEFT
draw_vertex(0, primy);
draw_vertex(0, 0);
draw_vertex(primx, 0);
draw_primitive_end();

//Draw bottom right white triange
draw_primitive_begin(pr_trianglelist); //BOTTOM RIGHT
draw_vertex(global.window_width, global.window_height-primy);
draw_vertex(global.window_width, global.window_height);
draw_vertex(global.window_width-primx, global.window_height);
draw_primitive_end();

//Draw extra text
draw_set_color(c_black);
draw_text_transformed(40,vicy,"Victory!",2,2,0); //TOP LEFT
draw_text(global.window_width-230,othery,"Gold Gained: 4");
draw_set_color(c_white);

//Draw FPS throughout the game (Debug)
draw_text_transformed(global.window_width-30,global.window_height-25,fps,1,1,0);
///VICTORY SCREEN UI
if (live_call()) return live_result;
draw_set_alpha(backalpha);
draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);
draw_set_alpha(1);


if room = rm_battle {
if (global.currentturn = "Victory") or (global.currentturn = "End") or (global.currentturn = "Results") {
for (var i=0;i<global.partycount;i++) {
	if i = vicfocus {
		//Draw MVP Party member first
		draw_sprite_ext(global.party[i].sprite_index, 0, global.partyvicx[i], global.partyvicy[i],global.partyvicscale[i],global.partyvicscale[i],0,c_white,1);
		draw_set_halign(fa_center);
			if global.partyvicMVP = global.party[i] {
				draw_text_transformed(global.partyvicx[i],global.partyvicy[i]-170,"MVP",1.5,1.5,0);
			}
			draw_text_transformed(global.partyvicx[i],global.partyvicy[i]-130,string(global.party[i].name) + " (Lv. " + string(global.partylevel[i]) + ")" ,0.7,0.7,0);
			draw_text(global.partyvicx[i],global.partyvicy[i]+125,"EXP +" + string(global.partygainedxp[i]));
			
			if global.partycurrentxp[i] <= global.partygainedxp[i] + global.party[i].currentxp && xpdelay = 0 {
					global.partycurrentxp[i] += 1.15;
					if global.partycurrentxp[i] >= global.partymaxxp {
						global.partylevel[i] += 1;
						global.partycurrentxp[i] = 0;
					}
			} else if xpdelay != 0 {
				xpdelay -= 1;
			}
			
			var pc = (global.partycurrentxp[i] / global.partymaxxp) * 100;
			draw_healthbar(global.partyvicx[i]-50,global.partyvicy[i]+110,global.partyvicx[i]+50,global.partyvicy[i]+120,pc,c_gray,c_lime,c_lime,0,true,true);
		draw_set_halign(fa_left);
	} else {
		draw_sprite_ext(global.party[i].sprite_index, 0, global.partyvicx[i], global.partyvicy[i],global.partyvicscale[i],global.partyvicscale[i],0,c_white,1);
		if global.currentturn = "Results" {
		draw_set_halign(fa_center);
			if global.partyvicMVP = global.party[i] {
				draw_text_transformed(global.partyvicx[i],global.partyvicy[i]-170,"MVP",1.5,1.5,0);
			}
			draw_text_transformed(global.partyvicx[i],global.partyvicy[i]-130,string(global.party[i].name) + " (Lv. " + string(global.partylevel[i]) + ")" ,0.7,0.7,0);
			draw_text(global.partyvicx[i],global.partyvicy[i]+125,"EXP +" + string(global.partygainedxp[i]));
			var pc = (global.partycurrentxp[i] / global.partymaxxp) * 100;
			draw_healthbar(global.partyvicx[i]-50,global.partyvicy[i]+110,global.partyvicx[i]+50,global.partyvicy[i]+120,pc,c_gray,c_lime,c_lime,0,true,true);
		draw_set_halign(fa_left);
		}
	}

}
}
}

draw_primitive_begin(pr_trianglelist); //TOP LEFT
draw_vertex(0, primy);
draw_vertex(0, 0);
draw_vertex(primx, 0);
draw_primitive_end();

draw_primitive_begin(pr_trianglelist); //BOTTOM RIGHT
draw_vertex(room_width, room_height-primy);
draw_vertex(room_width, room_height);
draw_vertex(room_width-primx, room_height);
draw_primitive_end();

draw_set_color(c_black);
draw_text_transformed(40,vicy,"Victory!",2,2,0); //TOP LEFT
draw_text(room_width-230,othery,"Gold Gained: 4");
draw_set_color(c_white);

show_debug_message("XP Delay: " + string(xpdelay));
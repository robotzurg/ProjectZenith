///VICTORY SCREEN UI
if (live_call()) return live_result;
draw_set_alpha(backalpha);
draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);
draw_set_alpha(1);

if global.currentturn = "Victory" or global.currentturn = "End" && room = rm_battle {
for (var i=0;i<global.partycount;i++) {
	if i = 0 {
		//Draw MVP Party member first
		draw_sprite_ext(global.party[i].sprite_index, 0, 480+(230*i), room_height/2,2,2,0,c_white,1);
		draw_set_halign(fa_center);
			draw_text_transformed(480-(230*i),room_height/2-170,"MVP",1.5,1.5,0);
			draw_text_transformed(480-(230*i),room_height/2-130,"Test Player 1 (Lv. 12)",0.7,0.7,0);
			draw_text(480-(230*i),room_height/2+100,"EXP +26");
		draw_set_halign(fa_left);
	} else {
		draw_sprite(global.party[i].sprite_index, 0, 480-(230*i), room_height/2+95);
	}
}
}

draw_primitive_begin(pr_trianglelist); //TOP LEFT
draw_vertex(0, primy);
draw_vertex(0, 0);
draw_vertex(800, 0);
draw_primitive_end();

draw_primitive_begin(pr_trianglelist); //BOTTOM RIGHT
draw_vertex(room_width,room_height-primy);
draw_vertex(room_width, room_height);
draw_vertex(room_width-800, room_height);
draw_primitive_end();

draw_set_color(c_black);
draw_text_transformed(40,vicy,"Victory!",2,2,0); //TOP LEFT
draw_text(room_width-230,othery,"Gold Gained: 4");
draw_set_color(c_white);



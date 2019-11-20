///VICTORY SCREEN UI
draw_set_alpha(backalpha);
draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);
draw_set_alpha(1);

//if global.currentturn = "Victory" or global.currentturn = "End" {
/*for (var i=0;i<global.partycount;i++) {
	draw_sprite(global.party[i].sprite_index, 0, 355+(230*i), room_height/2);	
}

draw_set_halign(fa_center);
draw_text(room_width/2-10,room_height/2-100,"Add victory poses here");
draw_set_halign(fa_left);*/

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
draw_text_transformed(70,vicy,"Victory!",2,2,0); //TOP LEFT
draw_text(room_width-260,othery,"XP Gained: 2");
draw_text(room_width-260,othery+25,"Gold Gained: 4");
draw_set_color(c_white);



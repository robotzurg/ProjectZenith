if (live_call()) return live_result;

///BATTLE UI
nine_slice_box_stretch(global.charfocus.textboxspr,0,420,260,540);
nine_slice_box_stretch(runselect,0,1,80,60);
draw_text(18,15,"Run");
draw_sprite(global.charfocus.portrait,0,50,490);
draw_set_halign(fa_left);
draw_text(15,424,global.charfocus.name);
draw_text_transformed(100,450,"HP: " + string(global.charfocus.hp) + "/" + string(global.charfocus.maxhp),0.8,0.8,0);
draw_text_transformed(100,470,"MP: " + string(global.charfocus.mp) + "/" + string(global.charfocus.maxmp),0.8,0.8,0);
draw_text_transformed(100,490,"Strength: " + string(global.charfocus.str),0.8,0.8,0);
draw_text_transformed(100,510,"Defense: " + string(global.charfocus.def),0.8,0.8,0);
nine_slice_box_stretch(global.charfocus.textboxspr,atkx1,atky1,atkx2,atky2);
nine_slice_box_stretch(sklselect,sklx1,skly1,sklx2,skly2);
if menu_open = "none" or menu_open != "skills" {
	nine_slice_box_stretch(itmselect,itmx1,itmy1,itmx2,itmy2);
}
draw_set_halign(fa_center);
if global.currentturn = "Players" {
	draw_text_transformed(room_width/2,15,"Player Turn",1.5,1.5,0);
} else if global.currentturn = "Enemies" {
	draw_text_transformed(room_width/2,15,"Enemy Turn",1.5,1.5,0);	
}
if menu_open = "none" {
	draw_text(375,475-10,"Attack");
	nine_slice_box_stretch(atkselect,415,450,475,510);
	if point_in_rectangle(mouse_x,mouse_y,415,450,475,510) { draw_sprite(global.charfocus.wepequipped,image_index,430,462) }
	else { draw_sprite(global.charfocus.wepequipped,0,430,462) }
	draw_text(600,475-10,"Skills");
	draw_text(800,475-10,"Items");
} else {	
	if menu_open = "skills" {draw_sprite(s_backicon,0,sklx1+10,skly1+5);}
	else if menu_open = "item" {draw_sprite(s_backicon,0,itmx1+10,itmy1+5);}
}
draw_set_halign(fa_left);



///VICTORY SCREEN UI
draw_set_alpha(backalpha);
draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);
draw_set_alpha(1);

/*for (var i=0;i<global.partycount;i++) {
	draw_sprite(global.party[i].sprite_index, 0, 355+(230*i), room_height/2);	
}

draw_set_halign(fa_center);
draw_text(room_width/2-10,room_height/2-100,"Add victory poses here");
draw_set_halign(fa_left);*/

draw_primitive_begin(pr_trianglelist); //TOP LEFT
draw_vertex(0, primy);
draw_vertex(0, 0);
draw_vertex(primx, 0);
draw_primitive_end();

draw_primitive_begin(pr_trianglelist); //BOTTOM RIGHT
draw_vertex(room_width,room_height-primy);
draw_vertex(room_width, room_height);
draw_vertex(room_width-primx, room_height);
draw_primitive_end();

draw_set_color(c_black);
draw_text_transformed(70,vicy,"Victory!",2,2,0); //TOP LEFT
draw_text(room_width-260,othery,"XP Gained: 2");
draw_text(room_width-260,othery+25,"Gold Gained: 4");
draw_set_color(c_white);




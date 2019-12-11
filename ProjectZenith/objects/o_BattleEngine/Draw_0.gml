///BATTLE UI
if (live_call()) return live_result;
nine_slice_box_stretch(global.charfocus.textboxspr,0,420,260,540);
nine_slice_box_stretch(runselect,0,1,80,60);
nine_slice_box_stretch(glitchselect,room_width-100,1,room_width,60)
draw_text(18,15,"Run");
draw_text(room_width-85,15,"Glitch");
draw_sprite(global.charfocus.portrait,0,50,490);
draw_set_halign(fa_left);
draw_text(15,424,global.charfocus.name);
draw_text_transformed(100,450,"HP: " + string(global.charfocus.hp) + "/" + string(global.charfocus.maxhp),0.8,0.8,0);
draw_text_transformed(100,470,"MP: " + string(global.charfocus.mp) + "/" + string(global.charfocus.maxmp),0.8,0.8,0);
draw_text_transformed(100,490,"Strength: " + string(global.charfocus.str),0.8,0.8,0);
draw_text_transformed(100,510,"Defense: " + string(global.charfocus.def),0.8,0.8,0);
nine_slice_box_stretch(global.charfocus.textboxspr,atkx1,btny1,atkx2,btny2);
nine_slice_box_stretch(sklselect,sklx1,btny1,sklx2,btny2);
if menu_open == "none" or menu_open != "skills" {
	nine_slice_box_stretch(itmselect,itmx1,btny1,itmx2,btny2);
	if !instance_exists(o_potionicon) && menu_open != "item" {
		instance_create_layer(itmx1+95,btny1+12,"UI",o_potionicon);
	}
}
draw_set_halign(fa_center);
if global.currentturn = "Players" {
	draw_text_transformed(room_width/2,15,"Player Turn",1.5,1.5,0);
} else if global.currentturn = "Enemies" {
	draw_text_transformed(room_width/2,15,"Enemy Turn",1.5,1.5,0);	
}
if menu_open = "none" {
	draw_set_valign(fa_center);
	draw_text(375,btny1+30,"Attack");
	nine_slice_box_stretch(atkselect,415,btny1,475,btny2);
	if !instance_exists(global.charfocus.wepequipped) { instance_create_layer(430,btny1+12,"UI",global.charfocus.wepequipped) }
	draw_text(600,btny1+30,"Skills");
	draw_text(775,btny1+30,"Items");
	draw_set_valign(fa_top);
} else {	
	if menu_open = "skills" {draw_sprite(s_backicon,0,sklx1+10,btny1+5);}
	else if menu_open = "item" {draw_sprite(s_backicon,0,itmx1+10,btny1+5);}
}
draw_set_halign(fa_left);
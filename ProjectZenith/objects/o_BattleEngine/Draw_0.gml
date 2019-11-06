if (live_call()) return live_result;

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
draw_text_transformed(room_width/2,15,"Player Turn",1.5,1.5,0);
if menu_open = "none" {
	draw_text(375,475-10,"Attack");
	nine_slice_box_stretch(atkselect,415,450,475,510);
	draw_sprite(s_testwepicon,0,430,462); 
	draw_text(600,475-10,"Skills");
	draw_text(800,475-10,"Items");
} else {	
	if menu_open = "skills" {draw_sprite(s_backicon,0,sklx1+10,skly1+5);}
	else if menu_open = "item" {draw_sprite(s_backicon,0,itmx1+10,itmy1+5);}
}
draw_set_halign(fa_left);
draw_self();
if turndone == true && dead == false {
	draw_sprite(s_turndoneicon,0,x-50,y-40);
}

if show_details == true {
	nine_slice_box_stretch(textboxspr,x+40,y-30,x+180,y+120);
	draw_text_transformed(x+50,y-20,name,0.7,0.7,0);
	draw_text_transformed(x+50,y,"HP: " + string(hp) + "/" + string(maxhp),0.8,0.8,0);
	draw_text_transformed(x+50,y+20,"Strength: " + string(str),0.8,0.8,0);
	draw_text_transformed(x+50,y+40,"Defense: " + string(def),0.8,0.8,0);
	draw_text_transformed(x+50,y+60,"Speed: " + string("N/A"),0.8,0.8,0);
	draw_set_halign(fa_center)
	draw_text_transformed(x+105,y+89,"(Test Blurb.)",0.5,0.5,0);
	draw_set_halign(fa_left);
}


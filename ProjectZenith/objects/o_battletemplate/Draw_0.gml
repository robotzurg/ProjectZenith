if (live_call()) return live_result;
draw_self();

if selection != "none" and target != "none" and turndone = false {
	instance_create_layer(x+50,y,"Instances",o_swordswing);
	o_swordswing.user = object_index;
	o_swordswing.usertype = "Player";
}

if turndone = true {
	draw_sprite(s_turndoneicon,0,x-50,y-40);
}

if show_details = true {
		nine_slice_box_stretch(textboxspr,x+40,y-30,x+180,y+120);
	draw_text_transformed(x+50,y-20,name,0.8,0.8,0);
	draw_text_transformed(x+50,y,"HP: " + string(hp) + "/" + string(maxhp),0.8,0.8,0);
	draw_text_transformed(x+50,y+20,"Strength: " + string(str),0.8,0.8,0);
	draw_text_transformed(x+50,y+40,"Defense: " + string(def),0.8,0.8,0);
	draw_set_halign(fa_center)
	draw_text_transformed(x+105,y+80,"(Test Blurb.)",0.6,0.6,0);
	draw_set_halign(fa_left);
}
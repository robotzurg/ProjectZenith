
if o_PartyMenu.menufoc == "party" {

if backstock == false {
	draw_sprite_ext(sprite_index,0,x,y,scale,scale,0,image_blend,1);
} else {
	if o_PartyMenu.membox == "party" {
		draw_sprite_ext(sprite_index,0,x,y,scale,scale,0,image_blend,1);
	} 
}

if popuptimer != 0 && popup == false {
	draw_rectangle(x+20,y-50,x+20+(popuptimer),y-60,false);
}

if popup == true {
	nine_slice_box_stretch(textboxspr,x+60,y-100,x+170,y+30);
	draw_set_halign(fa_center)
	draw_text_transformed(x+115,y-90,name,0.5,0.5,0);
	draw_text_transformed(x+115,y-75,"HP: " + string(hp),0.5,0.5,0);
	draw_text_transformed(x+115,y-60,"Strength: " + string(str),0.5,0.5,0);
	draw_text_transformed(x+115,y-45,"Defense: " + string(def),0.5,0.5,0);
	draw_text_transformed(x+115,y-30,"Speed: " + "N/A",0.5,0.5,0);
	draw_set_halign(fa_left);
}
}
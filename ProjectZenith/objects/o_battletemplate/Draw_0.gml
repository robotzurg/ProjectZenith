draw_self();

if selection != "none" and target != "none" and turndone = false {
	instance_create_layer(x+50,y,"Instances",o_swordswing);
	o_swordswing.user = object_index;
}

if turndone = true {
	draw_sprite(s_turndoneicon,0,x-50,y-40);
}

draw_text(x,y-60,selection);
draw_text(x,y-80,target);
if disable != true {
draw_self();

if place_meeting(x,y,o_player) {
	draw_sprite(s_interacticon,0,x,y-25);	
}

draw_set_alpha(a);
draw_rectangle_color(-5000,-5000,5000,5000,c_white,c_white,c_white,c_white,false);
draw_set_alpha(1);
}
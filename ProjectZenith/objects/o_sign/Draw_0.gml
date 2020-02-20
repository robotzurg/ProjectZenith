
draw_self();

if show_popup == true {
	draw_rectangle_color(x-75,y-30,x+125,y+20,c_white,c_white,c_white,c_white,false);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
		draw_text_color(x+25,y-5,"Lemonsberg",c_black,c_black,c_black,c_black,1);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}

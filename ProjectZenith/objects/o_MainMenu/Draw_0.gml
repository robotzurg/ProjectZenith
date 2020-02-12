if (live_call()) return live_result;

draw_set_halign(fa_center);
draw_text_transformed(room_width/2,50,"Project Zenith",3,3,0);

draw_text_transformed(room_width/2,240,"Play",1.5,1.5,0);
draw_text_transformed(room_width/2,300,"Settings",1.5,1.5,0);
draw_text_transformed(room_width/2,360,"Quit",1.5,1.5,0);

draw_set_alpha(a)
draw_rectangle(0,0,room_width,room_height,false);
draw_set_alpha(1)
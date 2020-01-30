a -= duration
if a = 0 { instance_destroy(); }

draw_set_alpha(a);
draw_set_font(fnt_fadetext);
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
	if is_ext == false {
		draw_text(x,y,text);
	} else {
		draw_text_transformed_color(x,y,text,xscale,yscale,rotation,color,color,color,color,a);	
	}
	y -= speed_;
draw_set_font(fnt_battle);
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_alpha(texta);
if display != "N/A" {
	draw_sprite(sc_opening,display,0,0);
}

if textdisplay != "N/A" {
	draw_text_transformed_color(textx,texty,textdisplay,1.5,1.5,0,textcol,textcol,textcol,textcol,texta);	
}
draw_set_alpha(1);
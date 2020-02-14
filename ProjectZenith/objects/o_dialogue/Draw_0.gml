draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_textbox);
nine_slice_box_stretch(s_9slice,focus.x+22,focus.y-focus.sprite_height+20,focus.x+40,focus.y-focus.sprite_height+40);
nine_slice_box_stretch(s_9slice,focus.x+22,focus.y-focus.sprite_height-15,focus.x+string_width(message[message_current])+40,focus.y-focus.sprite_height+30);
draw_text(x, y, message_draw); //draw the text at the coordinates
draw_set_font(fnt_battle);
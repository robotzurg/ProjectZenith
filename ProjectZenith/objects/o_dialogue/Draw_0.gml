if (live_call()) return live_result;
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_textbox);
nine_slice_box_stretch(s_9slice,focus.x+22,focus.y-focus.sprite_height/2,focus.x+40,focus.y-focus.sprite_height/2+40);
nine_slice_box_stretch(s_9slice, focus.x+22 , focus.y-focus.sprite_height/2-10 , focus.x+string_width_ext(message[message_current],-1,300)+40,focus.y-focus.sprite_height/2+string_height_ext(message[message_current],-1,300)+10);
draw_text_ext(x, y, message_draw,-1,300); //draw the text at the coordinates
draw_set_font(fnt_battle);
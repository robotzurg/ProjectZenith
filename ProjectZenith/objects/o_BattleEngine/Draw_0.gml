if (live_call()) return live_result;

nine_slice_box_stretch(s_9slice,0,420,960,540);
nine_slice_box_stretch(s_9slice,0,1,80,60);
draw_text(18,15,"Run");
draw_sprite(o_battleplayer.portrait,0,60,480);
draw_text_transformed(120,450,"Strength: " + string(o_battleplayer.str),0.8,0.8,0);
draw_text_transformed(120,475,"Defense: " + string(o_battleplayer.def),0.8,0.8,0);
nine_slice_box_stretch(s_9slice,600,450,750,510);
nine_slice_box_stretch(s_9slice,600,450,750,510);

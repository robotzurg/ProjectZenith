var alpha = ((o_BattleEngine.menu_open == "item") ? 1 : 0)
draw_set_alpha(alpha);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,alpha);
draw_text(x+35,y+5,"x" + string(type[# 2, ID]));
draw_set_alpha(1);
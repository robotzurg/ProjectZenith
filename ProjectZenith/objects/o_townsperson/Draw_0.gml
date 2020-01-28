draw_sprite_ext(sprite_index,image_index,x,y,flipped,image_yscale,image_angle,image_blend,image_alpha);

if place_meeting(x - (50 * o_player.flipped),y,o_player) && global.dialogue_disable == false {
	draw_sprite(s_interacticon,0,x,y-30);
}
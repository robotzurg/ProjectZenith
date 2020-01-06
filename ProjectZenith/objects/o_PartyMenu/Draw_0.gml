if (live_call()) return live_result;
//Data Extraction Variables for each party member
if disable[0] = false {
	var char1 = global.currentparty[| 0];
} else {
	var char1 = global.extraparty[| ds_list_size(global.extraparty)-1];
}

if disable[1] = false {
	var char2 = global.currentparty[| 1];
} else {
	var char2 = global.extraparty[| ds_list_size(global.extraparty)-1];
}

if disable[2] = false {
	var char3 = global.currentparty[| 2];
} else {
	var char3 = global.extraparty[| ds_list_size(global.extraparty)-1];
}

var hmid = room_height/2;
var wmid= room_width/2;
var scale;

scale[0] = (grabbed[0] = true or disable[0] == true) ? 1 : 1.5;
scale[1] = (grabbed[1] = true or disable[1] == true) ? 1 : 1.5;
scale[2] = (grabbed[2] = true or disable[2] == true) ? 1 : 1.5;

draw_text_transformed(10,10,"Party Select",1.5,1.5,0);

//Draw the text above and below the party member displays
draw_set_halign(fa_center);
draw_text_transformed(wmid-250,hmid-180,"#1",1.5,1.5,0);
if disable[0] = false {
	draw_text_transformed(wmid-250,hmid+40,char1[? "name"],1,1,0);
} else {
	draw_text_transformed(wmid-250,hmid+40,"Nobody.",1,1,0);
}

draw_text_transformed(wmid,hmid-180,"#2",1.5,1.5,0);
if disable[1] = false {
	draw_text_transformed(wmid,hmid+40,char2[? "name"],1,1,0);
} else {
	draw_text_transformed(wmid,hmid+40,"Nobody.",1,1,0);
}

draw_text_transformed(wmid+250,hmid-180,"#3",1.5,1.5,0);
if disable[2] = false {
	draw_text_transformed(wmid+250,hmid+40,char3[? "name"],1,1,0);
} else {
	draw_text_transformed(wmid+250,hmid+40,"Nobody.",1,1,0);
}
draw_set_halign(fa_left);

//Draw the box for the extra players
draw_rectangle(25,365,935,515,true);

var parmap1 = global.currentparty[| 0];
var parmap2 = global.currentparty[| 1];
var parmap3 = global.currentparty[| 2];

//Draw the party member sprites
for (var i = 0; i<ds_list_size(global.extraparty); i++) {
	var xx = 90 +  (90 * i)
	var yy = 440;
	var exmap = global.extraparty[| i];
	draw_sprite_ext(exmap[? "spr"],0,xx,yy,1,1,image_angle,image_blend,image_alpha);
}

if parmap1[? "name"] != "Nobody." {
	draw_sprite_ext(parmap1[? "spr"],0,par1x,par1y,scale[0],scale[0],image_angle,image_blend,image_alpha);
}

if parmap2[? "name"] != "Nobody." {
	draw_sprite_ext(parmap2[? "spr"],0,par2x,par2y,scale[1],scale[1],image_angle,image_blend,image_alpha);
}

if parmap3[? "name"] != "Nobody." {
	draw_sprite_ext(parmap3[? "spr"],0,par3x,par3y,scale[2],scale[2],image_angle,image_blend,image_alpha);
}
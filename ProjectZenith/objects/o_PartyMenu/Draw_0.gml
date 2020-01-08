if (live_call()) return live_result;
//Data Extraction Variables for each party member
var char1 = global.currentparty[| 0];
var char2 = global.currentparty[| 1];
var char3 = global.currentparty[| 2];

var hmid = room_height/2;
var wmid= room_width/2;

draw_text_transformed(10,10,"Party Select",1.5,1.5,0);

//Draw the text above and below the party member displays
draw_set_halign(fa_center);
draw_text_transformed(wmid-250,hmid-180,"#1",1.5,1.5,0);
draw_text_transformed(wmid-250,hmid+40,char1[? "name"],1,1,0);

draw_text_transformed(wmid,hmid-180,"#2",1.5,1.5,0);
draw_text_transformed(wmid,hmid+40,char2[? "name"],1,1,0);

draw_text_transformed(wmid+250,hmid-180,"#3",1.5,1.5,0);
draw_text_transformed(wmid+250,hmid+40,char3[? "name"],1,1,0);

draw_set_halign(fa_left);

//Draw the box for the extra players
draw_rectangle(25,365,935,515,true);
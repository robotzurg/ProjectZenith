if (live_call()) return live_result;
if menufoc == "party" {
//Data Extraction Variables for each party member
var char1 = global.currentparty[| 0];
var char2 = global.currentparty[| 1];
var char3 = global.currentparty[| 2];

var hmid = global.window_height/2;
var wmid= global.window_width/2;

draw_text_transformed(10,10,"Party Select",1.5,1.5,0);

//Draw the text above and below the party member displays
draw_set_halign(fa_center);
draw_text_transformed(wmid-250,hmid-180,"#1",1.5,1.5,0);
if char1 != 0 {
	draw_text_transformed(wmid-250,hmid+40,char1[? "name"],1,1,0);
	draw_rectangle(wmid-200,hmid-130,wmid-150,hmid-80,true);
	draw_rectangle(wmid-200,hmid-70,wmid-150,hmid-20,true);
	draw_sprite(s_partywepicon,0,wmid-173,hmid-45);
}

draw_text_transformed(wmid,hmid-180,"#2",1.5,1.5,0);
if char2 != 0 {
	draw_text_transformed(wmid,hmid+40,char2[? "name"],1,1,0);
	draw_rectangle(wmid+50,hmid-130,wmid+100,hmid-80,true);
	draw_rectangle(wmid+50,hmid-70,wmid+100,hmid-20,true);
	draw_sprite(s_partywepicon,0,wmid+77,hmid-45);
}

draw_text_transformed(wmid+250,hmid-180,"#3",1.5,1.5,0);
if char3 != 0 {
	draw_text_transformed(wmid+250,hmid+40,char3[? "name"],1,1,0);
	draw_rectangle(wmid+300,hmid-130,wmid+350,hmid-80,true);
	draw_rectangle(wmid+300,hmid-70,wmid+350,hmid-20,true);
	draw_sprite(s_partywepicon,0,wmid+327,hmid-45);
}

draw_set_halign(fa_left);

//Draw the box for the extra players
draw_rectangle(25,365,935,515,true);


} else {
	draw_set_halign(fa_middle);
	draw_set_valign(fa_center);
	draw_text_transformed(global.window_width/2,70,"Pause Menu",2,2,0);	
	draw_text_transformed(global.window_width/2,200,"Resume",scale[0],scale[0],0);
	draw_text_transformed(global.window_width/2,250,"Settings",scale[1],scale[1],0);
	draw_text_transformed(global.window_width/2,300,"Party Select",scale[2],scale[2],0);
	draw_text_transformed(global.window_width/2,350,"Quit",scale[3],scale[3],0);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
}
	
//Draw arrow leading into pause menu
draw_set_halign(fa_right)
if menufoc == "party" { draw_sprite(s_pauseicon,0,global.window_width-40,global.window_height-530); }
draw_set_halign(fa_left);
///draw_fade_text_ext(x,y,text,xscale,yscale,rot,col,spd,dur);
///@param x
///@param y
///@param text
///@param xscale
///@param yscale
///@param rot
///@param col
///@param speed
///@param duration

var xx = argument0;
var yy = argument1;
var txt = argument2;
var xscale = argument3;
var yscale = argument4;
var rotation = argument5;
var color = argument6;
var speed_ = argument7;
var duration = argument8;

if speed_ = -1 { //Set defaults
	speed_ = 0.5;	
}

if duration == -1 { //Set defaults
	duration = 0.02;	
}


var newText = instance_create_depth(xx,yy,-1000,o_fadetext);
newText.text = txt;
newText.xscale = xscale;
newText.yscale = yscale;
newText.rotation = rotation;
newText.color = color;
newText.speed_ = speed_
newText.duration = duration
newText.is_ext = true;
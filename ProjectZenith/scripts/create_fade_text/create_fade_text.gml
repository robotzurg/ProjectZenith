///create_fade_text(x,y,text);
///@param x
///@param y
///@param text;

var xx = argument0;
var yy = argument1;
var txt = argument2;

var newText = instance_create_layer(xx,yy,"UI",o_fadetext);
newText.text = txt;
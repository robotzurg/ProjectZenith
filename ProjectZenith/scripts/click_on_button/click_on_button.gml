///if_click_on_button(type,x1,y1,x2,y2)
///@param type
///@param x1
///@param y1
///@param x2
///@param y2
var foc = global.charfocus;
var par = global.currentparty[| foc];
var click = (mouse_check_button_pressed(mb_left))
var type = argument0;
var x1 = argument1;
var y1 = argument2;
var x2 = argument3;
var y2 = argument4;

if point_in_rectangle(mouse_x,mouse_y,x1,y1,x2,y2) {
	argument0 = par[? "textbox_spr"];
	if (click) {
		return true;
	} else {
		return false;
	}
}  else {
	argument0 = par[? "textbox_spr_hover"];
	image_index = 0;
	return false	
}
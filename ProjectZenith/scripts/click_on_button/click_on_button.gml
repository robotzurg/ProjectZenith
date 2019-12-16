///if_click_on_button(x1,y1,x2,y2)
///@param x1
///@param y1
///@param x2
///@param y2
var click = (mouse_check_button_pressed(mb_left))
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;

if point_in_rectangle(mouse_x,mouse_y,x1,y1,x2,y2) {
	if (click) {
		return true;
	} else {
		return false;
	}
}  else {
	return false	
}
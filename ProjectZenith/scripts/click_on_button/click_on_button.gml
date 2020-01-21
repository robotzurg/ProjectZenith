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

if point_in_rectangle(global.d_mouse_x,global.d_mouse_y,x1,y1,x2,y2) {
	//Based on button type, change the 9slice box to hover since the mouse is in the button
	switch (type) {
		case "attack": atkselect = par[? "textbox_spr_hover"] break;
		case "skills": sklselect = par[? "textbox_spr_hover"] break;
		case "items":  itmselect = par[? "textbox_spr_hover"] break;
		case "glitch":  glitchselect = par[? "textbox_spr_hover"] break;
		case "run":  runselect = par[? "textbox_spr_hover"] break;
	}
	
	if (click) {
		return true;
	} else {
		return false;
	}
	
}  else {
	
	//Based on button type, change the 9slice box back to normal since the mouse isn't in the button
	switch (type) {
		case "attack": atkselect = par[? "textbox_spr"] break;
		case "skills": sklselect = par[? "textbox_spr"] break;
		case "items":  itmselect = par[? "textbox_spr"] break;
		case "glitch":  glitchselect = par[? "textbox_spr"] break;
		case "run":  runselect = par[? "textbox_spr"] break;
	}
	
	image_index = 0;
	return false	
	
}
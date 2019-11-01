if (live_call()) return live_result;
var click = mouse_check_button_pressed(mb_left);

if point_in_rectangle(mouse_x,mouse_y,0,1,80,60) {
	runselect = s_9sliceselect;
	if (click) {
		trans_to_room(testroom,"run1");
	}
} else {
	runselect = s_9slice;
}

if menu_open = "none" {
if point_in_rectangle(mouse_x,mouse_y,415,450,475,510) {
	atkselect = s_9sliceselect;
	if (click) {
		menu_open = "none";	
	}
} else {
	atkselect = s_9slice;
}

if point_in_rectangle(mouse_x,mouse_y,525,450,675,510) {
	sklselect = s_9sliceselect;
	if (click) {
		menu_open = "skills";
		sklselect = s_9slice;
	}
} else {
	sklselect = s_9slice;
}

if point_in_rectangle(mouse_x,mouse_y,725,450,875,510) {
	itmselect = s_9sliceselect;
	if (click) {
		menu_open = "item";
		itmselect = s_9slice;
	}
} else {
	itmselect = s_9slice;
}
}

switch(menu_open) {
	case "skills": 
	sklx1 = lerp(sklx1,265,0.4);
	skly1 = lerp(skly1,420,0.4);
	sklx2 = lerp(sklx2,955,0.4);
	skly2 = lerp(skly2,540,0.4);
	break;
	case "item": 
	itmx1 = lerp(itmx1,265,0.4);
	itmy1 = lerp(itmy1,420,0.4);
	itmx2 = lerp(itmx2,955,0.4);
	itmy2 = lerp(itmy2,540,0.4);
	break;
}
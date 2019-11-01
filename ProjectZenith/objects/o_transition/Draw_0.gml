if global.transition = "battle1" or global.transition = "run1" {
	
	y2[0] = lerp(y2[0],room_height/2,0.2);
	y1[1] = lerp(y1[1],room_height/2,0.2);

	draw_rectangle(x1[0],y1[0],x2[0],y2[0],false);	
	draw_rectangle(x1[1],y1[1],x2[1],y2[1],false);	
	
} else if global.transition = "battle2" or global.transition = "run2" {
	
	y2[0] = lerp(y2[0],0,0.15);
	y1[1] = lerp(y1[1],room_height,0.15);
	
	draw_rectangle(x1[0],y1[0],x2[0],y2[0],false);	
	draw_rectangle(x1[1],y1[1],x2[1],y2[1],false);		
}
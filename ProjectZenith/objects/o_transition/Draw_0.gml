if global.transition = "battle" {
	
	if room != rm_battle {
	y2[0] = lerp(y2[0],room_height/2,0.2);
	y1[1] = lerp(y1[1],room_height/2,0.2);
	}
	
	draw_rectangle(x1[0],y1[0],x2[0],y2[0],false);	
	draw_rectangle(x1[1],y1[1],x2[1],y2[1],false);	
	
	draw_text_color(100,100,y2[0],c_black,c_black,c_black,c_black,1);
	
}
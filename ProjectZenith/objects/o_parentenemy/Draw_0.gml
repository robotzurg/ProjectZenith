draw_self();

var pc;
pc = (hp / maxhp) * 100;

draw_healthbar(x-25,y+50,x+25,y+40,pc,c_gray,c_red,c_red,0,true,true);

if global.currentturn = "Players" && global.charfocus.selection = "attack" && position_meeting(mouse_x,mouse_y,self) && dead == false {
	draw_sprite(s_targeticon,0,x,y);
}

if global.currentturn = "Enemies" && turndone = true {
	draw_sprite(s_turndoneicon,0,x-50,y-20);	
}
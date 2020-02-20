if (live_call()) return live_result

if show_details == true {
	depth = -1298432
	nine_slice_box_stretch(o_BattleEngine.plrID[global.charfocus].textboxspr,x-200,y,x-40,y+150);
	draw_text_transformed(x-181,y+10,name,0.8,0.8,0);
	draw_text_transformed(x-181,y+30,"HP: " + string(hp) + "/" + string(maxhp),0.8,0.8,0);
	draw_text_transformed(x-181,y+50,"Strength: " + string(str),0.8,0.8,0);
	draw_text_transformed(x-181,y+70,"Defense: " + string(def),0.8,0.8,0);
	draw_text_transformed(x-155,y+110,"(Pathetic.)",0.6,0.6,0);
}

//Jeff's GOOD code
draw_self();

var pc;
pc = (hp / maxhp) * 100;

draw_healthbar(x-35,y+sprite_height/2+5 ,x+35,y+sprite_height/2 + 15,pc,c_gray,c_red,c_red,0,true,true);

if global.currentturn == "Players" && o_BattleEngine.plrID[global.charfocus].selection == "attack" && position_meeting(global.d_mouse_x,global.d_mouse_y,self) && dead == false {
	draw_sprite(s_targeticon,0,x,y);
}

if global.currentturn == "Enemies" && turndone == true {
	draw_sprite(s_turndoneicon,0,x-50,y-20);	
}

//Ryans bad code
if strd == true {
	draw_fade_text(x-75,y,"str down")
	strd = false
}
if defd == true {
	draw_fade_text(x-75,y,"def down")
	defd = false
}
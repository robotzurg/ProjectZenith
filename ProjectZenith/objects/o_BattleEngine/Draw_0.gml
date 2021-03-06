if (live_call()) return live_result;
///BATTLE UI///
//Set data extraction variables
var foc = global.charfocus;
var par = global.currentparty[| foc];

//Draw the Run and Glitch buttons into the game world
nine_slice_box_stretch(runselect,0,1,80,60); //Run Button
draw_text(18,15,"Run");
nine_slice_box_stretch(glitchselect,room_width-100,1,room_width,60) //Glitch Button
draw_text(room_width-85,15,"Glitch");

//Draw the Player Data Textbox and draw the data inside of it
nine_slice_box_stretch(par[? "textbox_spr"],0,420,260,540); //Player Data Textbox
draw_sprite(par[? "portrait"],0,50,490);
draw_text(15,424,par[? "name"]);
draw_text_transformed(100,450,"HP: " + string(plrID[foc].hp) + "/" + string(par[? "max_hp"]),0.8,0.8,0);
draw_text_transformed(100,470,"MP: " + string(plrID[foc].mp) + "/" + string(par[? "max_mp"]),0.8,0.8,0);
draw_text_transformed(100,490,"Strength: " + string(par[? "str"]),0.8,0.8,0);
draw_text_transformed(100,510,"Defense: " + string(par[? "def"]),0.8,0.8,0);

/*Draw the Attack, Skill, and Item buttons into the game world
Everything in this category changes its size and position dynamically, and because of that it needs special variables that are lerped.*/
nine_slice_box_stretch(par[? "textbox_spr"],atkx1,atky1,atkx2,atky2); //Attack Button (Not the actual weapon box, but the box behind it)
nine_slice_box_stretch(sklselect,sklx1,skly1,sklx2,skly2); //Skill Button



//Because the item button is at a higher depth then the skill button, we have to stop drawing it when skills menu is open, otherwise you'll still see the item when skill is clicked on.
if menu_open == "none" or menu_open != "skills" { 
	nine_slice_box_stretch(itmselect,itmx1,itmy1,itmx2,itmy2); 
	if !instance_exists(o_potionicon) { //If it doesn't exist, create the potion icon object.
		instance_create_layer(820,463,"UI",o_potionicon); 
	}
}


if menu_open == "item" { //Draw the items contents
	draw_text(320,430,"Healing/Mana");
	draw_text(545,430,"Buffs/Debuffs");
	draw_text(780,430,"Offensive");
	draw_rectangle(510,430,515,530,false);
	draw_rectangle(740,430,745,530,false);
}

draw_set_halign(fa_center); //Set the Horizontal Alignment to the Middle for everything below this.

if global.currentturn = "Players" {
	draw_text_transformed(room_width/2,15,"Player Turn",1.5,1.5,0);
} else if global.currentturn = "Enemies" {
	draw_text_transformed(room_width/2,15,"Enemy Turn",1.5,1.5,0);	
}

//If the all the buttons are inactive, draw the extra button UI elements, otherwise draw the back icon for the expanded menu.
if menu_open = "none" {
	draw_set_valign(fa_center);
	draw_text(375,atky1+30,"Attack");
	nine_slice_box_stretch(atkselect,415,atky1,475,atky2);
	if !instance_exists(par[? "wep_equipped"]) { instance_create_layer(430,atky1+15,"UI",par[? "wep_equipped"]) }
	draw_text(600,skly1+30,"Skills");
	draw_text(775,itmy1+30,"Items");
	draw_set_valign(fa_top);
} else {	
	if menu_open = "skills" {draw_sprite(s_backicon,0,sklx1+10,skly1+5);}
	else if menu_open = "item" {draw_sprite(s_backicon,0,itmx1+10,itmy1+5);}
}



draw_set_halign(fa_left); //Set the Horizontal Alignment back to Left.


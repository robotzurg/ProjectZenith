//if (live_call()) return live_result
if room = rm_battle {	

//Set the character focus to party member 1
global.charfocus = 0;

//Data extraction variables
var foc = global.charfocus;
var par = global.currentparty[| foc];

//Initialize some variables for later use
atkselect = par[? "textbox_spr"];
sklselect = par[? "textbox_spr"];
itmselect = par[? "textbox_spr"];
runselect = par[? "textbox_spr"];
glitchselect = par[? "textbox_spr"];
menu_open = "none";
turnsdone = 0;
totaldead = 0;
o_GameEngine.vicfocus = 0;
global.currentturn = "Players";
for (var plr = 0; plr < global.partycount; plr++) {
	plrID[plr] = 0;	
}

//Initalize button coordinate variables

atkx1 = 325
atkx2 = 475
atky1 = 450
atky2 = 510

sklx1 = 525
sklx2 = 675
skly1 = 450
skly2 = 510

itmx1 = 725
itmx2 = 875
itmy1 = 450
itmy2 = 510

//Create the party instances in battle and set their instance IDs to a variable
for (var inst = 0; inst<global.partycount;inst++) {
	create_party(inst);
	//global.party[inst].currentxp = global.partycurrentxp[inst];
}

//Create the enemies based on the enemy count (lots of position changing based on the for loop)
var xx = 0;
var ex = 720;
var ey = 175;

for (var i=0;i<global.enemycount;i++) {
	switch (global.enemycount) {
		case 1:	global.enemyparty[i] = instance_create_layer(ex+40,ey+15+(96*i),"Instances",global.enemytype); break;
		case 2:	global.enemyparty[i] = instance_create_layer(ex+40,ey-35+(111*i),"Instances",global.enemytype); break;
		case 3:	global.enemyparty[i] = instance_create_layer(ex+40,ey-85+(111*i),"Instances",global.enemytype); break;
		case 4:
		if i = 0 {
			global.enemyparty[i] = instance_create_layer(ex-2,ey-115+(100*i),"Instances",global.enemytype); 
		} else if i = 1 or i = 2 {
			global.enemyparty[i] = instance_create_layer(ex+30,ey-115+(100*i),"Instances",global.enemytype); 
		} else if i = 3 {
			global.enemyparty[i] = instance_create_layer(ex-2,ey-115+(100*i),"Instances",global.enemytype); 	
		} break;
		case 5:
		if i < 3 {
			global.enemyparty[i] = instance_create_layer(ex,ey-85+(111*i),"Instances",global.enemytype); 
		} else {
			global.enemyparty[i] = instance_create_layer(ex+100,ey-35+(115*xx),"Instances",global.enemytype); 	
			xx++;
		} break
		
	}
}

//Set enemy focus (USES LEGACY SYSTEM!)
global.enemyfocus = global.enemyparty[0];

} //End of if room = rm_battle
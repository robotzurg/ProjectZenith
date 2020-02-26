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
enemytotaldead = 0;
playertotaldead = 0;
item_create = true;
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
}

for (var i=0;i<global.enemycount;i++) {
	create_enemyparty(i);
}

//Set enemy focus
global.enemyfocus = enID[0];

} //End of if room = rm_battle

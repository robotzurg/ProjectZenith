if room = rm_battle {
	
global.currentturn = "Players";

instance_create_layer(160,128,"Instances",global.party[0]);
instance_create_layer(160,256,"Instances",global.party[1]);

for (var i=0;i<global.enemycount;i++) {
	instance_create_layer(460,96*i,"Instances",global.enemytype);
}

atkselect = global.charfocus.textboxspr;
sklselect = global.charfocus.textboxspr;
itmselect = global.charfocus.textboxspr;
runselect = global.charfocus.textboxspr;
menu_open = "none";

atkx1 = 325
atky1 = 450
atkx2 = 475
atky2 = 510

sklx1 = 525
skly1 = 450
sklx2 = 675
skly2 = 510

itmx1 = 725
itmy1 = 450
itmx2 = 875
itmy2 = 510
//Get number of players and enemies and their IDs in an array

/*for (var i=0;i<instplrcount;i++) {
	partyinst[i] = instance_find(o_parentplayer,i);
	show_debug_message(partyinst[i]);
	show_debug_message(i);
}

for (var i=0;i<instenemycount;i++) {
	enemyinst[i] = instance_find(o_parentenemy,i);
	show_debug_message(enemyinst[i]);
}

partycount = array_length_1d(partyinst);
enemycount = array_length_1d(enemyinst);
show_debug_message("Party Count: " + string(partycount));
show_debug_message("Enemy Count: " + string(enemycount));


show_debug_message("Player 1: " + string(partyinst[0]))*/
}
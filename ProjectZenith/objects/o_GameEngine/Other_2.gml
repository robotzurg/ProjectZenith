randomize();
global.transition = "none";
global.state = "platformer";
global.charfocus = o_battleplayer;
global.currentturn = "Players";
global.partymaxxp = 100;
global.enemycount = 1;
global.enemytype = o_parentenemy;
global.enemytokill = o_enemy;
global.battledone = false;

//Party Member setup
global.party[0] = o_battleplayer;
global.party[1] = o_battleplayer2;
global.party[2] = o_battleplayer3;
global.partycount = array_length_1d(global.party);
for (var i = 0; i < global.partycount; i++) {
	global.partygainedxp[i] = 0;
	global.partycurrentxp[i] = 0;
	global.partydisplayxp[i] = 0;
	global.partylevel[i] = 1;
}
global.partyvicMVP = global.party[0];

draw_set_font(fnt_battle);

//Victory Screen Variables
primy = 0;
primx = 800;
vicy = -100;
othery = 600;
backalpha = 0;
finishtrans = false;
vicfocus = 0;
xpdelay = 60;
fillxp = false;
xpfilled = false;
if (live_call()) return live_result;
randomize();
global.transition = "none";
global.state = "platformer";
global.charfocus = o_battleplayer;
global.currentturn = "Players";
global.party[0] = o_battleplayer;
global.party[1] = o_battleplayer2;
global.partycount = array_length_1d(global.party);
global.enemycount = 1;
global.enemytype = o_parentenemy;
global.enemytokill = o_enemy;
global.battledone = false;

draw_set_font(fnt_battle);

//Victory Screen Coords
primy = 0;
vicy = -100;
othery = 600;
backalpha = 0;
finishtrans = false;
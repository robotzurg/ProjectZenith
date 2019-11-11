global.transition = "none";
global.state = "platformer";
global.charfocus = o_battleplayer;
global.currentturn = "Players";
global.party[0] = o_battleplayer;
global.party[1] = o_battleplayer2;
global.partycount = array_length_1d(global.party);
global.enemycount = 1;
global.enemytype = o_parentenemy;

draw_set_font(fnt_battle);
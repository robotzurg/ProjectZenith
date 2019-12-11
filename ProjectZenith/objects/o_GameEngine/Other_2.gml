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

//Set up data storage data structures for party members
global.party_members = ds_list_create();
char1map = ds_map_create();
char2map = ds_map_create();
char3map = ds_map_create();
ds_list_add(global.party_members,char1map)
ds_list_mark_as_map(global.party_members,0);
ds_list_add(global.party_members,char2map)
ds_list_mark_as_map(global.party_members,1);
ds_list_add(global.party_members,char3map)
ds_list_mark_as_map(global.party_members,2);

//Set up data storage data strcutures for CURRENT party members
global.currentparty = ds_list_create();
setup_party_data();

//Set up Characters
setup_character(char1map,char.battleplayer1,"Battle Player 1", s_player, s_9slice, 2, 2, o_swordicon, 0, 100, 1, o_battleplayer)
setup_character(char2map,char.battleplayer2,"Battle Player 2", s_player2, s_9slicep2, 5, 2, o_bowicon, 0, 100, 1, o_battleplayer2)
setup_character(char3map,char.battleplayer3,"Battle Player 3", s_player3, s_9slicep3, 10, 10, o_bowicon, 0, 100, 1, o_battleplayer3)

//Give us some party members onto our team
add_to_party(char.battleplayer1,0);
add_to_party(char.battleplayer2,1);
add_to_party(char.battleplayer3,2);



randomize();
global.transition = "none";
global.state = "platformer";
global.charfocus = char.battleplayer1;
global.currentturn = "Players";
global.enemycount = 1;
global.enemytype = o_parentenemy;
global.enemytokill = o_enemy;
global.battledone = false
global.camera_focus = o_player;
global.dialogue_disable = false;

global.d_mouse_x = device_mouse_x_to_gui(0);
global.d_mouse_y = device_mouse_y_to_gui(0);
global.window_width = RES_W * RES_SCALE;
global.window_height = RES_H * RES_SCALE;

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
emptymap = ds_map_create();
ds_list_add(global.party_members,char1map)
ds_list_mark_as_map(global.party_members,0);
ds_list_add(global.party_members,char2map)
ds_list_mark_as_map(global.party_members,1);
ds_list_add(global.party_members,char3map)
ds_list_mark_as_map(global.party_members,2);
ds_list_add(global.party_members,emptymap)
ds_list_mark_as_map(global.party_members,3);

//Set up enemy characters
global.enemy_list = ds_list_create();
en1map = ds_map_create();
en2map = ds_map_create();
ds_list_add(global.enemy_list,en1map);
ds_list_mark_as_map(global.enemy_list,en1map)
ds_list_add(global.enemy_list,en2map);
ds_list_mark_as_map(global.enemy_list,en2map)


//Set up data storage data strcutures for CURRENT party members
global.currentparty = ds_list_create();
setup_party_data();

//Set up data storage structures for current enemies fighting list
global.enemyparty = ds_list_create();

//Set up data storage data structures for ALL party members THAT YOU CAN USE
global.extraparty= ds_list_create();

//Set up Characters
setup_character(char1map,char.battleplayer1,"Battle Player 1", s_player, s_9slice, 2, 2, o_swordicon, -1, 100, 1, 50, 50, 50, 50, s_testportrait,s_9sliceselect)
setup_character(char2map,char.battleplayer2,"Battle Player 2", s_player2, s_9slicep2, 5, 2, o_bowicon, -1, 100, 1, 25, 25, 25, 25, s_testportraitp2,s_9slicep2select)
setup_character(char3map,char.battleplayer3,"Battle Player 3", s_player3, s_9slicep3, 10, 10, o_bowicon, -1, 100, 1, 10, 10, 10, 10, s_testportraitp3,s_9slicep3select)
setup_character(emptymap,9999,"Nobody.",s_player,s_9slice,0,0,o_swordicon,0,100,1,100,100,100,100,s_testportrait,s_9sliceselect);

//Set up enemy data 
setup_enemy(en1map, enemy.blueboy, "Blue Boy", s_enemy, s_9slicep2, 1000, 2, 1, 10, 10, 5, 5);
setup_enemy(en2map, enemy.pinkgirl, "Pink Girl", s_testenemy2, s_9slice, 1000, 2, 1, 15, 15, 10, 10);

//Give us some party members onto our team
add_to_party(char.battleplayer1,0);
add_to_party(char.battleplayer2,1);
add_to_party(char.battleplayer3,2);

//Set the Party Count
global.partycount = ds_list_size(global.currentparty);

//Party Member setup (legacy)
for (var i = 0; i < global.partycount; i++) {
	global.partygainedxp[i] = 0;
	global.partydisplayxp[i] = 0;
}

draw_set_font(fnt_battle);


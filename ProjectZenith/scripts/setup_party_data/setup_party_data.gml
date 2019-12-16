///setup_party_data();
party1map = ds_map_create();
party2map = ds_map_create();
party3map = ds_map_create();
ds_list_add(global.currentparty,party1map)
ds_list_mark_as_map(global.currentparty,0);
ds_list_add(global.currentparty,party2map)
ds_list_mark_as_map(global.currentparty,1);
ds_list_add(global.currentparty,party3map)
ds_list_mark_as_map(global.currentparty,2);

setup_character(party1map,1000,"Nobody.",s_player,s_9slice,0,0,o_swordicon,0,100,1,100,100,100,100,s_testportrait);
setup_character(party2map,1001,"Nobody.",s_player,s_9slice,0,0,o_swordicon,0,100,1,100,100,100,100,s_testportrait);
setup_character(party3map,1002,"Nobody.",s_player,s_9slice,0,0,o_swordicon,0,100,1,100,100,100,100,s_testportrait);
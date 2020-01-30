///pick_next_player();

if global.currentturn = "Players" {
	var option = (global.charfocus+1)
	if option == 3 {
		option = 0;	
	}
	global.charfocus = option;
	show_debug_message(string(id) + " Picked: " + string(o_BattleEngine.plrID[option]));
}

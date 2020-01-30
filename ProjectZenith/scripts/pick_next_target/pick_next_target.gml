///pick_next_target();

var option = irandom_range(0,global.partycount-1)
target = option;
show_debug_message(string(id) + " Picked: " + string(o_BattleEngine.plrID[option]));

if o_BattleEngine.plrID[option].dead == true {
	return false;	
} else {
	return true;	
}
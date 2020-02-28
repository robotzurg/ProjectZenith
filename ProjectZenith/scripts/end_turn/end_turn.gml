turndone = true;
o_BattleEngine.turnsdone += 1;
selection = "none";
target = "none";
o_BattleEngine.menu_open = "none";

if itemselected != -1 { //If we used an item this turn, reset some extra values
	itemselected = -1;
}

if o_BattleEngine.turnsdone != global.partycount {
	instance_deactivate_object(o_iconparent)
	print(string(id)  + " Picking next player.");
	pick_next_player();
}
turndone = true;
		o_BattleEngine.turnsdone += 1;
		selection = "none";
		target = "none";
		if o_BattleEngine.turnsdone != global.partycount {
			instance_deactivate_object(o_iconparent)
			print(string(id)  + " Picking next player.");
			pick_next_player();
		}
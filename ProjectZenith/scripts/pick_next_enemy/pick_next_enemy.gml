///pick_next_enemy();

if global.currentturn = "Enemies" {
	var option = irandom_range(0,global.enemycount-1);
	global.enemyfocus = o_BattleEngine.enID[option];	
	print(string(id) + " Picked: " + string(o_BattleEngine.enID[option]));
}

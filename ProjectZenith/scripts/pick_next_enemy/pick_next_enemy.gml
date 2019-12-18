///pick_next_enemy();

if global.currentturn = "Enemies" {
	var option = irandom_range(0,global.enemycount-1);
	global.enemyfocus = global.enemyparty[option];	
	show_debug_message(string(id) + " Picked: " + string(global.enemyparty[option]));
}

///battle_start(enemy,amount);
///@param enemy
///@param amount
var enemy = argument0;
var amount = argument1;
if !(instance_exists(o_transition)) {
	global.enemytokill = other;
	show_debug_message(global.enemytokill);
	trans_to_room(rm_battle,"battle1");
	global.enemytype = enemy;
	global.enemycount = amount;
}
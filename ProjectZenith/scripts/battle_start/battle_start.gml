///battle_start(enemy,amount);
///@param enemy
///@param amount
var enemy = argument0;
var amount = argument1;
global.enemytokill = other.object_index;

if !(instance_exists(o_transition)) {
	trans_to_room(rm_battle,"battle1");
	global.enemytype = enemy;
	global.enemycount = amount;
}
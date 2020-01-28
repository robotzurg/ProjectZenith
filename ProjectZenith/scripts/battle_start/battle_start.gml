///battle_start(enemy,amount);
///@param enemy
///@param amount
var enemy = argument0;
var amount = argument1;

for (var i = 0;i<amount;i++) {
	global.enemyparty[i] = 
}

if !(instance_exists(o_transition)) {
	global.enemytokill = other;
	trans_to_room(rm_battle,"battle1");
	global.enemytype = enemy;
	global.enemycount = amount;
}

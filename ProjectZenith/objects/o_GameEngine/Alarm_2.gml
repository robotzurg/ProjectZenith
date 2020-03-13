finishtrans = true;
room_goto(prevroom);
switch (engagedenemy) {
	case enemy.blueboy: instance_destroy(o_enemy); break;
	case enemy.demonking: instance_destroy(o_DemonKing); break;
}
global.state = "platformer";
global.currentturn = "Players";
vicfocus = 0;
xpdelay = 60;
fillxp = false;
xpfilled = false;
prevroom = rm_overworld;
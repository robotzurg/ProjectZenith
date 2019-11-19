if (live_call()) return live_result;
if room = rm_battle {
global.currentturn = "Players";
image_speed = 0.5;

instance_create_layer(160,128,"Instances",global.party[0]);
instance_create_layer(160,256,"Instances",global.party[1]);

var xx = 0;
var ex = 720;
var ey = 175;

for (var i=0;i<global.enemycount;i++) {
	switch (global.enemycount) {
		case 1:	global.enemyparty[i] = instance_create_layer(ex+40,ey+15+(96*i),"Instances",global.enemytype); break;
		case 2:	global.enemyparty[i] = instance_create_layer(ex+40,ey-35+(111*i),"Instances",global.enemytype); break;
		case 3:	global.enemyparty[i] = instance_create_layer(ex+40,ey-85+(111*i),"Instances",global.enemytype); break;
		case 4:
		if i = 0 {
			global.enemyparty[i] = instance_create_layer(ex-2,ey-115+(100*i),"Instances",global.enemytype); 
		} else if i = 1 or i = 2 {
			global.enemyparty[i] = instance_create_layer(ex+30,ey-115+(100*i),"Instances",global.enemytype); 
		} else if i = 3 {
			global.enemyparty[i] = instance_create_layer(ex-2,ey-115+(100*i),"Instances",global.enemytype); 	
		} break;
		case 5:
		if i < 3 {
			global.enemyparty[i] = instance_create_layer(ex,ey-85+(111*i),"Instances",global.enemytype); 
		} else {
			global.enemyparty[i] = instance_create_layer(ex+100,ey-35+(115*xx),"Instances",global.enemytype); 	
			xx++;
		} break;
	}
}

atkselect = global.charfocus.textboxspr;
sklselect = global.charfocus.textboxspr;
itmselect = global.charfocus.textboxspr;
runselect = global.charfocus.textboxspr;
menu_open = "none";
turnsdone = 0;
totaldead = 0;

atkx1 = 325
atky1 = 450
atkx2 = 475
atky2 = 510

sklx1 = 525
skly1 = 450
sklx2 = 675
skly2 = 510

itmx1 = 725
itmy1 = 450
itmx2 = 875
itmy2 = 510
}
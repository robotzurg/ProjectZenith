if room = rm_battle {
	
for (var inst = 0; inst<global.partycount;inst++) {
	instance_create_layer(160,100+(125*inst),"Instances",global.party[inst]);
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

global.currentturn = "Players";
image_speed = 0.2;

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

for (var i=0;i<global.partycount;i++) {
		var angle = darctan(o_GameEngine.primy / 800);
		o_GameEngine.l[i] = lerp(o_GameEngine.l[i], 200*(o_GameEngine.vicfocus - i), 0.2)
		global.partyvicx[i] = room_width/2+lengthdir_x(o_GameEngine.l[i],angle);
		global.partyvicy[i] = room_height/2+lengthdir_y(o_GameEngine.l[i],angle);
		global.partyvicscale[i] = 1*(o_GameEngine.vicfocus+1)
	}

}
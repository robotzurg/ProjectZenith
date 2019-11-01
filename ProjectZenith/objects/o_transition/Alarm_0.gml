switch(global.transition){
case "battle1": global.transition = "battle2"; break;
case "run1": global.transition = "run2"; break;
}

room_goto(room_trans);

alarm[1] = 45;
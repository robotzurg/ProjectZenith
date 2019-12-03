///trans_to_room(room,transition);
///@param room
///@param transition
global.transition = argument1;

if !instance_exists(o_transition) {
instance_create_layer(x,y,"Transition",o_transition) 
o_transition.room_trans = argument0;

if argument1 = "battle1" {
	global.state = "battle";
} else if argument1 = "run1" {
	global.state = "platformer";
}
}


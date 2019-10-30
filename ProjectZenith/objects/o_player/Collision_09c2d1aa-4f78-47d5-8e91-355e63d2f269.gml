global.transition = "battle1";
global.state = "battle";
if !(instance_exists(o_transition)) {
	instance_create_layer(x,y,"UI",o_transition);	
}

instance_destroy();
if global.enemytokill = object_index && global.battledone == true {
	instance_destroy();	
	global.battledone = false;
}
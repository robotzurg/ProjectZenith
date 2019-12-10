if global.enemytokill == id && global.battledone == true {
	instance_destroy(self);	
	global.battledone = false;
}
for (var i=0; i < global.partycount; i++) {
	var map = global.currentparty[| i]
	global.IDtoinsert = map[? "id"]
	global.partyIDtoinsert = i;
	var mem = instance_create_layer(x,y,"Instances",o_PartyMemberObj) 
	instance_activate_object(mem);
}
///start_dialogue(object, message_1, event [optional])
///@param object
///@param messages
///@param [op]event
global.vartoadd[0] = argument[0]; //Add focus to the list of arguments to add.
global.vartoadd[1] = argument[1]; //Our message array

if(argument_count > 2){
    global.vartoadd[2] = argument[2];
} else {
	global.vartoadd[2] = "none";	
}

global.dialogue_disable = true;
instance_create_layer(global.vartoadd[0].x,global.vartoadd[0].y,"UI",o_dialogue); //Create the dialogue.

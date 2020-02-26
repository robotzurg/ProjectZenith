///start_dialogue(object, message_1)
///@param object
///@param messages
global.vartoadd[0] = argument[0]; //Add focus to the list of arguments to add.
global.vartoadd[1] = argument[1]; //Our message array

global.dialogue_disable = true;
instance_create_layer(global.vartoadd[0].x,global.vartoadd[0].y,"UI",o_dialogue); //Create the dialogue.

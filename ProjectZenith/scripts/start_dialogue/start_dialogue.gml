///start_dialogue(object, message_1, message_2, ...)
///@param object
///@param message_1
///@param message_2
///@param ...
global.vartoadd[0] = argument[0]; //Add focus to the list of arguments to add.
global.vartoadd[1] = argument_count-1;  //Grab the amount of messages, subtracting 1 because of the object condition

for(var i = 1; i < argument_count; i++) {
   global.vartoadd[i+1] = argument[i]; //Add any extra OPTIONAL arguments into the array of variables to add to o_dialogue
}

global.dialogue_disable = true;
instance_create_layer(global.vartoadd[0].x,global.vartoadd[0].y,"UI",o_dialogue); //Create the dialogue.

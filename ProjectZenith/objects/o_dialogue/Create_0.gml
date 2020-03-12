focus = global.vartoadd[0];
global.camera_focus = focus;
message = global.vartoadd[1];
event = global.vartoadd[2];
message_current = 0; //0 is the first number in our array, and the message we are currently at
message_end = array_length_1d(message)-1;
message_draw = ""; //this is what we 'write' out. It's blank right now
increase = 1; //the speed at which new characters are added
characters = 0; //how many characters have already been drawn
hold = 0; //if we hold 'Z', the text will render faster

message_length = string_length(message[message_current]); //get the number of characters in the first message
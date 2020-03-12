x = focus.x+30;
y = focus.y-focus.sprite_height

if (characters < message_length) { //if current character count is less than the amount in current message* 
    hold = keyboard_check(ord("Z")); //hold is true or false if we hold 'Z' or not
    characters += increase * (0.5 + hold); //increase speed based on hold
    message_draw = string_copy(message[message_current], 0, round(characters)); //copy string to current character
} 
else { //if current character is more than the amount in the current message
    if (keyboard_check_pressed(ord("Z"))) { //if we press Z...
        if (message_current < message_end) { //if there are more messages left to show
            message_current += 1; //increase the message by 1
            message_length = string_length(message[message_current]);  //get the new character length for message
            characters = 0; //set the characters back to 0
            message_draw = ""; //clear the drawn text
        }
        else { //if our messages are done
			global.dialogue_disable = false;
			global.camera_focus = o_player;
			if event != "none" {
				switch event {
					case ev.demonking: battle_start(enemy.blueboy,1);
					break;	
				}
			}
            instance_destroy(); //destroy the object
        }
    }
}
if place_meeting(x - (50 * o_player.flipped),y,o_player) && keyboard_check_pressed(ord("E")) && global.dialogue_disable == false {
	start_dialogue(self,"Woah!","Welcome to Lemonberg!", "I'm sure you'll loooooove it here! :)");
	flipped = o_player.flipped;
}
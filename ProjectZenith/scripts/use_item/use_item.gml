///use_item(item_id,target);

var item_id = argument0;
var target = argument1;

switch (item_id) {
	case item.potion: 
		target.selection = "heal";
		target.target = target;
	break;
	
	case item.buffpowder:
		target.str += 1;
		with target {
			end_turn();
		}
	break;
	
	case item.bomb:
		//target.selection = "attackitem"; (add later)
	break;
}
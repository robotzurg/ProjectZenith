///use_item(item_id,target);
///@param item_id
///@param target

var item_id = argument0;
var target = argument1;

switch (item_id) {
	case item.potion: 
		target.hp += 5;
		target.hp = clamp(target.hp,0,target.maxhp);
		var quantity = global.regenitems[# 2, item.potion];
		ds_grid_set(global.regenitems,2,item.potion,(quantity-1));
		draw_fade_text_ext(target.x+50,target.y,"+5",1,1,0,c_lime,0.4,0.01)
	break;
	
	case item.buffpowder:
		target.str += 1;
	break;
	
	case item.bomb:
		//target.selection = "attackitem"; (add later)
	break;
}
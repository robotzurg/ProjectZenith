///create_item_ui(x,y,item_id,type);
///@param x
///@param y
///@param item_id
///@param type
var xx = argument0;
var yy = argument1;
global.IDtoinsert = argument2;
global.typetoinsert = argument3;

instance_create_layer(xx,yy,"UI",o_itemUI);
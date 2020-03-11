if (live_call(argument0,argument1,argument2,argument3)) return live_result;
///setup_item(grid_id,item_id,sprite,quantity)
var grid = argument0;
var itemid = argument1;
var sprite = argument2;
var quantity = argument3;

ds_grid_resize(grid,3,ds_grid_height(grid)+1);
var gridpos = (ds_grid_height(grid)-1);
ds_grid_add(grid,0,gridpos,itemid);
ds_grid_add(grid,1,gridpos,sprite);
ds_grid_add(grid,2,gridpos,quantity);
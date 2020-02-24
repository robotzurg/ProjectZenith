///setup_item(grid_id,grid_pos,item_id,sprite,quantity)
var grid = argument0;
var gridpos = argument1;
var itemid = argument2;
var sprite = argument3;
var quantity = argument4;

ds_grid_add(grid,0,gridpos,itemid);
ds_grid_add(grid,1,gridpos,sprite);
ds_grid_add(grid,2,gridpos,quantity);
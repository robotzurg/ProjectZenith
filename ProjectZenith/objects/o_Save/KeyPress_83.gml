var root_list = ds_list_create()

with(o_SaveMe)
{
	var map = ds_map_create()
	ds_list_add(root_list, map)
	ds_list_mark_as_map(root_list,ds_list_size(root_list)-1)
	
	var obj = object_get_name(object_index)
	ds_map_add(map, "obj" , obj)
	ds_map_add(map, "x", x)
	ds_map_add(map, "y", y)
	
	
}
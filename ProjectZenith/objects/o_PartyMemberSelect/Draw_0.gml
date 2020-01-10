draw_self();

if partyID = 0 {
	for(var ii = 0; ii < ds_list_size(global.extraparty); ii++) {
		draw_text(10, 50+(ii*25), string(ds_list_find_value(global.extraparty, ii)));
	} 
}

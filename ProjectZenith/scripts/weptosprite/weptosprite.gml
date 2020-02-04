///weptosprite(wep_equipped)

var wep = argument0;

switch(wep) {
	case o_swordicon: var wepspr = s_swordicon break;	
	case o_bowicon: var wepspr = s_bowicon break;	
	default: var wepspr = s_partywepicon;
}

return wepspr;
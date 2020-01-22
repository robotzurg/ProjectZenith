///map_range_(value, min1, max1, min2, max2);
//@param value
//@param min1
//@param max1
//@param min2
//@param max2

var value = argument[0];
var min1 = argument[1];
var max1 = argument[2];
var min2 = argument[3];
var max2 = argument[4];

return min2 + (max2 - min2) * ((value-min1)/(max1-min1))
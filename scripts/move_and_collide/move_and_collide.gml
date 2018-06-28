///@arg xSpeed
///@arg ySpeed

var xSpeed = argument0 * image_xscale;
var ySpeed = argument1;

if not place_meeting(x + xSpeed, y, o_wall){
	x += xSpeed;
}

if not place_meeting(x, y + ySpeed, o_wall){
	y+= ySpeed;
}
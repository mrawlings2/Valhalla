/// @description Insert description here
// You can write your code in this editor
if(obj_village3.happiness > 0) { //Check if village3 has happiness
	direction = point_direction(x, y, obj_block3.x, obj_block3.y) // Set direction to the village
}
if(obj_village3.happiness <= 0) { //Check if village3 has no happiness
	direction = point_direction(x, y, obj_cloudMaker.x, obj_cloudMaker.y) // Set direction to the cloud maker
	speed = 0.5 // Set speed of the riot
}


if(not place_empty(x, y, obj_cloudMaker)) { // Check for collision with cloudmaker
	if (deal_damage == true) { // Check if riot can attack
		deal_damage = false// After attack set to false
		obj_cloudMaker.happiness -= riot_damage // Take away riot damage from happiness
		alarm[0] = 30//Set alarm
	}
}
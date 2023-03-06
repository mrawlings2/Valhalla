/// @description Insert description here
// You can write your code in this editor
if(obj_village2.happiness > 0) { //Check if village2 has happiness
	direction = point_direction(x, y, obj_block2.x, obj_block2.y) // Set direction to the village
}
if(obj_village2.happiness <= 0) { //Check if village1 has no happiness
	direction = point_direction(x, y, obj_cloudMaker.x, obj_cloudMaker.y) // Set direction to the cloud maker
	speed = 0.5 // Set speed of the riot
}
if(not instance_exists(obj_village2)) { // Check if village exists
	instance_destroy(obj_villageRiot2) // Destroy riot
}

if(not place_empty(x, y, obj_cloudMaker)) { // Check for collision with cloudmaker
	if (deal_damage == true) { // Check if riot can attack
		deal_damage = false// After attack set to false
		obj_cloudMaker.happiness -= riot_damage // Take away riot damage from happiness
		alarm[0] = 30//Set alarm
	}
}
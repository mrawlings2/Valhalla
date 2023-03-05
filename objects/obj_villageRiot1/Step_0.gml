/// @description Insert description here
// You can write your code in this editor
if(obj_village1.happiness > 0) { //Check if village1 has happiness
	direction = point_direction(x, y, obj_block1.x, obj_block1.y) // Set direction to the village
	speed = 0.5 // Set speed
} 
if(obj_village1.happiness <= 0) { //Check if village1 has no happiness
	direction = point_direction(x, y, obj_cloudMaker.x, obj_cloudMaker.y) // Set direction to the cloud maker
	speed = 0.5 // Set speed of the riot
}
if(not instance_exists(obj_village1)) { // Check if village exists
	instance_destroy(obj_villageRiot1) // Destroy riot
}
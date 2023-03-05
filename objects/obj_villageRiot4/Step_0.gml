if(obj_village4.happiness > 0) { //Check if village4 has happiness
	direction = point_direction(x, y, obj_block4.x, obj_block4.y) // Set direction to the village
}
if(obj_village4.happiness <= 0) { //Check if village1 has no happiness
	direction = point_direction(x, y, obj_cloudMaker.x, obj_cloudMaker.y) // Set direction to the cloud maker
	speed = 0.5 // Set speed of the riot
}
if(not instance_exists(obj_village4)) { // Check if village exists
	instance_destroy(obj_villageRiot4) // Destroy riot
}
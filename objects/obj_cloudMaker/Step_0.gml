/// @description Insert description here
// You can write your code in this editor
if (obj_cloudMaker.health <= 0) {
	instance_destroy(obj_cloudMaker)//destroy the cloud maker at 0 health
}

if (not instance_exists(obj_cloud) and (obj_cloudMaker.health > 0)) { // Check if there is no cloud and that the cloud maker still has health
	instance_create_layer(x, y, "Instances", obj_cloud)// Create a cloud
}
/// @description Insert description here
// You can write your code in this editor
if (health <= 0) {
	instance_destroy(obj_cloudMaker)//destroy the cloud maker at 0 health
}
if (not instance_exists(obj_cloud)) { // if the cloud currently no longer exists
	// respond the cloud
}
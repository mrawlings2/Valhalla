/// @description Insert description here
// You can write your code in this editor
if (obj_village.health <= 0) { // Check if happiness is all the way down
	instance_create_layer(x, y, "Instances", obj_riot3) // Create riot
}
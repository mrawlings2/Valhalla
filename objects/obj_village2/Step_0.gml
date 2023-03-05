/// @description Insert description here
// You can write your code in this editor
if (happiness <= 0) and (riot_counter <= 1) { // Check if happiness is all the way down and riot count
	instance_create_layer(x, y, "Instances", obj_villageRiot2) // Create riot2
	riot_counter += 1 // Increase riot count by 1
}
if (meatball_col >= evol) { // Check how many meatballs village has gotten
	instance_create_layer(x, y, "Instances", obj_house2) // Upgrade to house
	instance_destroy(obj_village2) // Destroy village
}
/// @description Insert description here
// You can write your code in this editor
if (happiness <= 0) and (riot_counter <= 1) { // Check if happiness is all the way down and riot count
	instance_create_layer(x, y, "Instances", obj_villageRiot4) 
	obj_villageRiot4.riot_damage += (frameNum *0.2);// Create riot4
	riot_counter += 1 // Increase riot count by 1
}
if (meatball_col >= evol) { // Check how many meatballs village has gotten
//	instance_create_layer(x, y, "Instances", obj_house4) // Upgrade to house
	if (frameNum < 2) then 
		frameNum += 1;
		meatball_col = 0;
		evol += 5;
		health_dplt += 5;
}
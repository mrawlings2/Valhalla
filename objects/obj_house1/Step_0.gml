if (happiness <= 0) and (riot_counter <= 1) { // Check if happiness is all the way down and riot count
	instance_create_layer(x, y, "Instances", obj_houseRiot1) // Create riot1
	riot_counter += 1 // Increase riot count by 1
}
if (meatball_col >= evol) { // Check how many meatballs house has gotten
	instance_create_layer(x, y, "Instances", obj_skyscraper1) // Upgrade to skyscraper
	instance_destroy(obj_house1) // Destroy house
}
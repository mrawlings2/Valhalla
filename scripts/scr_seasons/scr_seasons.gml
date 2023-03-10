// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_seasons(){ // Function to perform season changes
	global.season = 0 // Set season initially to 0
	global.seasonSwitch = false // Set season switch to false
	summerHealthDecrease = 5 // Summer health decrease boost
	windDirection = false // Variable for wind direction choice
	while(instance_exists(obj_cloudMaker)) { // Loop for the seasons
		alarm_set(0, 2000) // Set alarm
		while (season == 0 and seasonSwitch == false) { //Season is spring
			obj_village2.health_dplt = obj_village2.health_dplt + summerHealthDecrease 
			obj_village3.health_dplt = obj_village3.health_dplt + summerHealthDecrease
			obj_village4.health_dplt = obj_village4.health_dplt + summerHealthDecrease
			obj_village5.health_dplt = obj_village5.health_dplt + summerHealthDecrease
			obj_village6.health_dplt = obj_village6.health_dplt + summerHealthDecrease
			obj_cloud.rain_happyIncrease = 0.8 // New Rain happiness for spring
			obj_meatball.happy_increase = 25 // New meatball happiness for spring
		}
		
		while (season == 1 and seasonSwitch == false) { //Season is summer
			obj_cloud.rain_happyIncrease = 0.4 // Reset rain happiness for summer
			obj_cloud.happy_increase = 20 // Reset meatball happiness for summer
			obj_village2.health_dplt = obj_village2.health_dplt + summerHealthDecrease //Increase health deplete
			obj_village3.health_dplt = obj_village3.health_dplt + summerHealthDecrease
			obj_village4.health_dplt = obj_village4.health_dplt + summerHealthDecrease
			obj_village5.health_dplt = obj_village5.health_dplt + summerHealthDecrease
			obj_village6.health_dplt = obj_village6.health_dplt + summerHealthDecrease
		}
		
		while (season == 2 and seasonSwitch == false) { //Season is fall
			obj_village2.health_dplt = obj_village2.health_dplt - summerHealthDecrease //reset health deplete
			obj_village3.health_dplt = obj_village3.health_dplt - summerHealthDecrease
			obj_village4.health_dplt = obj_village4.health_dplt - summerHealthDecrease
			obj_village5.health_dplt = obj_village5.health_dplt - summerHealthDecrease
			obj_village6.health_dplt = obj_village6.health_dplt - summerHealthDecrease
			if (windDirection == false) { // Pick direction for wind
				
			}
		}
		
		while (season == 3 and seasonSwitch == false) { // Season is winter
			obj_village2.health_dplt = obj_village2.health_dplt - summerHealthDecrease //Decrease health deplete
			obj_village3.health_dplt = obj_village3.health_dplt - summerHealthDecrease
			obj_village4.health_dplt = obj_village4.health_dplt - summerHealthDecrease
			obj_village5.health_dplt = obj_village5.health_dplt - summerHealthDecrease
			obj_village6.health_dplt = obj_village6.health_dplt - summerHealthDecrease
		}
	}
}
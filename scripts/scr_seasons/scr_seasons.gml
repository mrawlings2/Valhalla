// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_seasons(){ // Function to perform season changes
	summerHealthDecrease = 5 // Summer health decrease boost
	xMod = 0 // Var to modify x pos
	yMod = 0 // Var to modify y pos
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
				xMod = choose(-.15, 0, .15) // Choose random direction for x
				yMod = choose(-.15, 0, .15) // Choose random direction for y
				if (xMod == 0 and yMod == 0) { // Check wind directions
					xMod = .15
				}
				obj_cloud.direction = direction(xMod, yMod) // Set direction of wind
				windDirection = true // Direction choosen
			}
			obj_cloud.x += 2
			obj_cloud.y += 2
		}
		
		while (season == 3 and seasonSwitch == false) { // Season is winter
			obj_village2.health_dplt = obj_village2.health_dplt - summerHealthDecrease //Decrease health deplete
			obj_village3.health_dplt = obj_village3.health_dplt - summerHealthDecrease
			obj_village4.health_dplt = obj_village4.health_dplt - summerHealthDecrease
			obj_village5.health_dplt = obj_village5.health_dplt - summerHealthDecrease
			obj_village6.health_dplt = obj_village6.health_dplt - summerHealthDecrease
		}
		
		while (season == 4 and seasonSwitch == false) {
			season = 0
		}
		windDirection = false // Variable for wind direction choice
		season += 1 // increment seasons
		seasonSwitch = false // var for switching seasons
	}
}
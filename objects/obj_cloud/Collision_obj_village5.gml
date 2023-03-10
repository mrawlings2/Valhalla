/// @description Insert description here
// You can write your code in this editor
if (obj_village5.happiness > 100) { // Ensure happiness does not go over 100
	obj_village5.happiness = 100
}
// Increase village happiness
if(canRain == true){
obj_village5.happiness += rain_happyIncrease // Increase village happiness
obj_village5.meatball_col +=0.01 //Increase Meatball counter for town evolving progress
alarm[1] = 1500; // Set alarm 
canRain = false;
}
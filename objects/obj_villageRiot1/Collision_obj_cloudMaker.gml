/// @description Insert description here
// You can write your code in this editor
speed = 0 // Stop the riot at cloudmaker
if (deal_damage == true) { // Check if riot can attack
	deal_damage = false // After attack set to false
	obj_village.happiness -= riot_damage // Take away riot damage from happiness
}
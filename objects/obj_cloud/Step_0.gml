/// @description Insert description here
// You can write your code in this editor
canShoot = true;
canRain = true;
x = clamp(x, sprite_width/2, room_width-sprite_width)// clamp area for cloud to travel
y = clamp(y, sprite_height/2, room_height-sprite_height)// clamp area for cloud to travel

if(x = sprite_width/2 or x = ( room_width - sprite_width)){hspeed = 0}// zeros out hspeed if hits border(sides)
if(y = sprite_height/2 or y = ( room_height - sprite_height)){vspeed = 0}//zeros out vspeed if hits border(top/bottom)


if (keyboard_check(vk_left)) {
	if(hspeed> 0){ // checks if the cloud is going in the opposite direction as input
	hspeed -=.25//if so, allow for the player to need to hold it for a slow counter change in direction
	}else{
	hspeed -= .40;//if cloud is going in same direction as input, allow for higher speeds
	}
}

if (keyboard_check(vk_right) ){
	if(hspeed< 0){ // checks if the cloud is going in the opposite direction as input
	hspeed +=.25 //if so, allow for the player to need to hold it for a slow counter change in direction
	}else{
	hspeed += .40;//if cloud is going in same direction as input, allow for higher speeds
	}
}
if (keyboard_check(vk_up)) {
	if(vspeed> 0){ // checks if the cloud is going in the opposite direction as input
	vspeed -=.25//if so, allow for the player to need to hold it for a slow counter change in direction
	}else{
	vspeed -= .40;//if cloud is going in same direction as input, allow for higher speeds
	}
}
if (keyboard_check(vk_down)) {
	if(vspeed< 0){ // checks if the cloud is going in the opposite direction as input
	vspeed +=.25 //if so, allow for the player to need to hold it for a slow counter change in direction
	}else{
	vspeed += .40;//if cloud is going in same direction as input, allow for higher speeds
	}
}

if (keyboard_check(!vk_right) and keyboard_check(!vk_left)) {

hspeed -= (sign(hspeed ))/4;

}

//check if the keys are being held, if not then the cloud will slow in vertical direction
if (keyboard_check(!vk_up) and keyboard_check(!vk_down)) {

//check if the keys are being held, if not then the cloud will slow in horizontal direction
vspeed -= (sign(vspeed ))/4;

}

if ((canShoot == true) and (keyboard_check_pressed(vk_space))) { // Check to see if canShoot is true and if space bar is pressed
	instance_create_layer(x+38, y, "Instances", obj_meatball) // Create meatball
	global.meatball_Counter += 1 // Update meatball counter
	canShoot = false // Set canShoot to false
	alarm[0] = 15 // Set alarm 
}



if (global.meatball_Counter >= meatballs) { // Check to see if cloud has run out of meatballs
	instance_destroy(obj_cloud) // Destroy cloud
}
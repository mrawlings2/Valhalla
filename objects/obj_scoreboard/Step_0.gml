/// @description Insert description here
// You can write your code in this editor
if(global.started && !global.menustartclosed){
global.menustartclosed = true;
global.menuOpen = !global.menuOpen;
}


if global.started == true {

	
	seconds += 1/room_speed
	if seconds == 60 {
		minutes += 1;
		instance_create_layer(-258, 607, "Instances_1", obj_train)
		seconds = 0;
	}
}
/// @description Insert description here
// You can write your code in this editor

if global.started == true {
	seconds += 1/room_speed
	if seconds == 60 {
		minutes += 1;
		seconds = 0;
	}
}
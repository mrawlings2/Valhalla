/// @description Insert description here
// You can write your code in this editor
draw_healthbar(8,8,256,32,obj_cloudMaker.happiness, c_black, c_red, c_blue, 0, true, true) // Draw healthbar for cloudmaker
//draw_healthbar(100, 100, 200, 200, obj_village1.happiness, c_black, c_red, c_blue, 0, true, true) // Draw healthbar of village

//timer display settings (to keep same # of digits throughout operation) 
if seconds < 10 and minutes < 10{
	draw_text(8, 88, "0" + string(minutes) + " : 0" + string(seconds));
} else if minutes < 10 {
	draw_text(8, 88, "0" + string(minutes) + " : " + string(seconds));
} else if seconds < 10 {
	draw_text(8, 88, string(minutes) + " : 0" + string(seconds));
} else {
	draw_text(8, 88, string(minutes) + " : " + string(seconds));
}
//insert score code here
//draw_text(8, 247, (score))

//insert meatball counter here
draw_sprite(spr_meatballCounter, (4-global.meatball_Counter), 8, 48);
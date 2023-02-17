/// @description Insert description here
// You can write your code in this editor
x = clamp(x, sprite_width/2, room_width-sprite_width/2)
y = clamp(y, sprite_height/2, room_height-sprite_height/2)
if (keyboard_check_pressed(vk_left)) {
	x -= vspeed
}
if (keyboard_check_pressed(vk_right) ){
	x += vspeed
}
if (keyboard_check_pressed(vk_up)) {
	y -= vspeed
}
if (keyboard_check_pressed(vk_down)) {
	y += vspeed
}
if (meatballs == 0) {
	instance_destroy(obj_cloud)
}
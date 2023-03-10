// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function on_click_play(){
show_debug_message("Button play clicked" + text );
global.started = true;
instance_destroy(obj_cloud);
obj_village1.happiness = 100;
instance_destroy(obj_villageRiot1);
obj_cloudMaker.happiness = 100;
}

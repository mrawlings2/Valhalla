

//create the UI
var _width = 300;
var _height = 100;

//create the play button
if(global.menustartclosed == false){
	buttonCreate(40,40,_width, _height, "Play", on_click_play);
}else{
	buttonCreate(40,40,_width, _height, "Restart", on_click_replay);
}

//create the credits button
if(global.menustartclosed == false){
	buttonCreate(40, 40 + 40 + _height ,_width, _height, "Credits", on_click_credit);
}else{
	buttonCreate(40, 40 + 40 + _height ,_width, _height, "Quit", on_click_quit);
}
//create the quit button
if(global.menustartclosed == false){
buttonCreate(40, 40 + (_height + 40) * 2, _width, _height, "Quit", on_click_quit);
}
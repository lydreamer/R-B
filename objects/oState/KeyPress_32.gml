/// @description Insert description here
// You can write your code in this editor

if (game_state_ == RESULT){
	instance_activate_all();
	oState.game_state_ = PLAY;
	room_restart();
}
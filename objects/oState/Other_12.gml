/// @description Result
// You can write your code in this editor
if(!show_result_){
	final_score = oPlayer.score_;
	record_score = max(record_score, final_score);
	if sprite_exists(pause_sprite_) sprite_delete(pause_sprite_);
	pause_sprite_ = sprite_create_from_surface(application_surface, 0, 0, oCamera.camera_w, oCamera.camera_h,false,false,0,0);
	instance_deactivate_all(true);
	show_result_ = true;
}
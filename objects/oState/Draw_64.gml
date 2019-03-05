/// @description Insert description here
// You can write your code in this editor
if (game_state_ == RESULT){
	draw_sprite(pause_sprite_,0,0,0);
	
	draw_set_alpha(0.7);
	draw_set_color(c_gray);
	draw_rectangle(camera_w*0.2,camera_h*0.3,camera_w*0.8,camera_h*0.7,0);
	
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_set_font(font_big);
	draw_text(camera_w/2,camera_h*0.4,"Game Over");
	draw_set_font(font0);
	draw_text(camera_w/2,camera_h*0.5,"Score: "+string(final_score));
	draw_text(camera_w/2,camera_h*0.55,"Record: "+string(record_score));
	draw_text(camera_w/2,camera_h*0.6,"Press SPACE to restart");
}
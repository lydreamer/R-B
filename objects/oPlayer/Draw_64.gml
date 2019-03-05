/// @description Insert description here
// You can write your code in this editor
var skill_frame_x = oCamera.camera_w * 0.5;
var skill_frame_y = oCamera.camera_h*0.8;
draw_sprite(sFrame,0,skill_frame_x, skill_frame_y);
draw_sprite(sColorDrug,0,skill_frame_x, skill_frame_y);	
if (!color_change_state){
	draw_set_alpha(0.5);
	draw_rectangle(skill_frame_x - sprite_get_width(sFrame)/2, skill_frame_y - sprite_get_height(sFrame)/2, 
		skill_frame_x + sprite_get_width(sFrame) * (0.5-color_change_T/color_change_CD), skill_frame_y + sprite_get_height(sFrame)/2,false);
	draw_set_alpha(1);
	draw_set_font(font0);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(skill_frame_x,skill_frame_y,string(ceil(color_change_CD-color_change_T)));
}else{
}
//draw item icon
//if item_!= noone draw_sprite(item_.sprite_index,0,oCamera.camera_w * 0.9, oCamera.camera_h*0.1);

draw_set_font(font0);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_text(oCamera.camera_w/2,oCamera.camera_h*0.1,"Score: " +string(score_));

/// @description Insert description here
// draw skill
var skill_frame_x = oCamera.camera_w * 0.3;
var skill_frame_y = oCamera.camera_h*0.8;
draw_sprite(sFrame,0,skill_frame_x, skill_frame_y);
draw_sprite(sColorDrug,0,skill_frame_x, skill_frame_y);	
if (!color_change_state){
	draw_frame(skill_frame_x,skill_frame_y,color_change_T,color_change_CD,c_red)
}
//draw buff
//buff1 - incincible
var buff1_frame_x = oCamera.camera_w * 0.5;
var buff1_frame_y = oCamera.camera_h*0.8;
draw_sprite(sFrame,0,buff1_frame_x, buff1_frame_y);
draw_sprite(sInvin,0,buff1_frame_x, buff1_frame_y);	
if (invin_buff>0){
	draw_frame(buff1_frame_x,buff1_frame_y,oInvin.lastingT - invin_buff,oInvin.lastingT,c_green)
}
//buff2 - super bomb
var buff2_frame_x = oCamera.camera_w * 0.7;
var buff2_frame_y = oCamera.camera_h*0.8;
draw_sprite(sFrame,0,buff2_frame_x, buff2_frame_y);
draw_sprite(sSuper,0,buff2_frame_x, buff2_frame_y);	
if (super_buff>0){
	draw_frame(buff2_frame_x,buff2_frame_y,oInvin.lastingT - super_buff,oSuper.lastingT,c_green)
}

//draw item icon
//if item_!= noone draw_sprite(item_.sprite_index,0,oCamera.camera_w * 0.9, oCamera.camera_h*0.1);

draw_set_font(font0);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_text(oCamera.camera_w/2,oCamera.camera_h*0.1,"Score: " +string(score_));

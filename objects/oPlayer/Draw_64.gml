/// @description Insert description here
// You can write your code in this editor

draw_sprite(sFrame,0,oCamera.camera_w * 0.9, oCamera.camera_h*0.1);
if item_!= noone draw_sprite(item_.sprite_index,0,oCamera.camera_w * 0.9, oCamera.camera_h*0.1);

draw_set_font(font0);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_text(oCamera.camera_w/2,oCamera.camera_h*0.1,"Score: " +string(score_));

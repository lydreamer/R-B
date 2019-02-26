/// @description Insert description here
// You can write your code in this editor
global.grv = 1;
camera_w = camera_get_view_width(view_camera[0]);
camera_h = camera_get_view_height(view_camera[0]);

camera_x = oPlayer.x - camera_w/2;
camera_y = oPlayer.y - camera_h*0.6;
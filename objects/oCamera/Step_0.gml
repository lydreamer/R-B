/// @description Insert description here
// set where the camera is
if not instance_exists(oPlayer) exit;
camera_x = clamp(lerp(camera_x,oPlayer.x - camera_w/2, 0.1), 0 ,room_width - camera_w);
camera_y = clamp(lerp(camera_y,oPlayer.y - camera_h*3/4,0.1), 0 ,room_height - camera_h); // 


camera_set_view_pos(view_camera[0],camera_x,camera_y);
move3();
if cl == BLUE_ sprite_index = sBlueP;
if cl == RED_ sprite_index = sRedP;

y_actual = (room_height - y) + oGame.h_plain_fall;
y_record = max(y_record, y_actual - y_base);
score_ = floor(y_record/100);

if (!color_change_state){
	color_change_T += 1/room_speed;
	if(color_change_T >= color_change_CD){
		color_change_state = true;
		color_change_T = 0;
	}
}

if (invin_buff > 0){
	invin_buff = max(0, invin_buff - 1/room_speed);
}
if (super_buff > 0){
	super_buff = max(0, super_buff - 1/room_speed);
}
mouse_radius = point_direction(x, y, mouse_x, mouse_y)/180*pi;
shoot_point_x = x + (abs(sprite_width)/2 - sprite_get_width(sRedBullet)/2) * cos(mouse_radius);
shoot_point_y = y - (abs(sprite_width)/2 - sprite_get_width(sRedBullet)/2) * sin(mouse_radius);


invincible = (!color_change_state && color_change_T < color_change_invincibleT ) || (invin_buff > 0);
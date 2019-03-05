/// @description Change color
if(color_change_state){
	cl = 1-cl;
	invincible = true;
	alarm[0] = color_change_invincibleT * room_speed;
	color_change_state = false;
}
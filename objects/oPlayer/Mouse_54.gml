/// @description Change color
if(item_!=noone){
	cl = item_.cl;
	item_ = noone;
	instance_destroy(item_);
	invincible = true;
	alarm[0] = color_change_invincibleT * room_speed;
}
/// @description Shoot
if (get_timer() - shootT) > shoot_CD * power(10,6){
	var new_bullet = instance_create_layer(shoot_point_x, shoot_point_y,"Bullets",oBullet);
	new_bullet.direction = point_direction(x, y, mouse_x, mouse_y);
	new_bullet.cl = cl;
	shootT = get_timer();
}
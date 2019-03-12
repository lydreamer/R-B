/// @description Insert description here
// You can write your code in this editor
draw_self();

if(invin_buff > 0) draw_sprite(sInvinHalo,0,x,y);
if(super_buff > 0){
	var bulletS = sSuperBullet;
}else{
	if cl == BLUE_ var bulletS = sBlueBullet;
	if cl == RED_ var bulletS = sRedBullet;
}
draw_sprite_ext(bulletS, 0, shoot_point_x, shoot_point_y,1,1, point_direction(x, y, mouse_x, mouse_y),c_white ,1);

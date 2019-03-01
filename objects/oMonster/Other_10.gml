/// @description Chase
// You can write your code in this editor

//move. monster would rapidly correct its direction to chase the player, but it would acclerate slower when the direction of speed is correct

target_dir = point_direction(x, y, oPlayer.x, oPlayer.y);
acc_x = acc * (max_sp*cos(target_dir/180*pi)-hspeed);
acc_y = acc * (max_sp*sin(target_dir/180*pi)-(-vspeed));

vspeed -= acc_y;	
hspeed += acc_x;	
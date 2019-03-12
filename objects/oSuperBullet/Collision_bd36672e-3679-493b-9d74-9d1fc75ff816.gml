/// @description Insert description here
// You can write your code in this editor
other.state_ = HIT;
other.vspeed += vspeed* hit_off_mon_para;
other.hspeed += hspeed* hit_off_mon_para;

instance_create_layer(x,y,"Bullets",oBomb);
instance_destroy();
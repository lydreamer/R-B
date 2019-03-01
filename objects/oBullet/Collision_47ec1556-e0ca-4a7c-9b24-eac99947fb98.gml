/// @description Insert description here
// You can write your code in this editor
if(cl == other.cl) {
	other.state_ = HIT;
	other.vspeed += vspeed* hit_off_mon_para;
	other.hspeed += hspeed* hit_off_mon_para;
}else{
	other.HP --;
}
instance_destroy();
/// @description Insert description here
// You can write your code in this editor
if (cl == other.cl || other.cl ==MIX_){
	if(!place_meeting(x - hspeed,y,other)){ // test the direction of collision
		hspeed = -hspeed;	
	}else{
		vspeed = -vspeed;	
	}
}else{
	instance_destroy();	
}
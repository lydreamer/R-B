/// @description Insert description here
// You can write your code in this editor
item_fall();
switch (cl) {
    case BLUE_:
        sprite_index = sBlueM;
        break;
    case RED_:
        sprite_index = sRedM;
        break;
    default:
        // code here
        break;
}

if(state_ == CHASE){
	event_user(CHASE);
}else if(state_ == HIT){
	alarm[0] = hit_stiff_t * room_speed;
	state_ = STIFF;
}

image_alpha = HP/HP_max;
if HP ==0 instance_destroy();

if(place_meeting(x,y,oPlayer)){
	if(cl !=oPlayer.cl &&!oPlayer.invincible){
		with(oPlayer) event_user(oPlayer);
	}
	else if (oPlayer.cl == cl){
		if(abs(sign(oPlayer.vspeed)-sign(vspeed)) == 0){//test direction, if they are the same
			vspeed = sign(vspeed)*max(abs(oPlayer.vspeed),abs(vspeed));
		}else{
			vspeed = -vspeed;
		}
		if(abs(sign(oPlayer.hspeed)-sign(hspeed)) == 0){//test direction, if they are the same
			hspeed = sign(hspeed)*max(abs(oPlayer.hspeed),abs(hspeed));
		}else{
			hspeed = -hspeed;
		}
	}
}
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
		with(oPlayer) event_user(DEATH);
	}
	else if (oPlayer.cl == cl){
		state_ = HIT;
		while(place_meeting(x,y,oPlayer)){
			if(oPlayer.vsp != 0){
				y += sign(oPlayer.vsp);
			}else{
				y -= sign(vspeed);
			}
			if(oPlayer.hsp != 0){
				x += sign(oPlayer.hsp);
			}else{
				x -= sign(hspeed);
			}
		}
		if(oPlayer.vsp * vspeed > 0 || vspeed == 0){//test direction, if they are the same
			vspeed = sign(oPlayer.vsp)*max(abs(oPlayer.vsp),abs(vspeed)) * push_monster_para;
		}else{
			vspeed = -sign(vspeed)*max(abs(oPlayer.vsp),abs(vspeed)) * push_monster_para;
		}
		if(oPlayer.hspeed * hspeed > 0 || hspeed == 0){//test direction, if they are the same
			hspeed = sign(oPlayer.hsp)*max(abs(oPlayer.hsp),abs(hspeed)) * push_monster_para;
		}else{
			hspeed = -sign(hspeed)*max(abs(oPlayer.hsp),abs(hspeed)) * push_monster_para;
		}
	}
}
vspeed = lerp(vspeed,0, air_fric);	
hspeed = lerp(hspeed,0, air_fric);
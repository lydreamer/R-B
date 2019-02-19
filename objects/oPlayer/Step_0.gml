//gravity
if !(place_meeting(x, y+1,oBluePlain) || place_meeting(x, y+1,oRedPlain) || place_meeting(x, y+1,oRBPlain) || place_meeting(x, y+1,oBlackPlain)){
	vsp += global.grv;
} else {
	if keyboard_check_pressed(vk_space){
		vsp = -jumpsp;
	}
}

//move control
var hinput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
if hinput != 0 {
	hsp += hinput*h_acc;
	hsp = clamp(hsp, -hsp_max,hsp_max);
} else {
	hsp = lerp(hsp,0,fric);
}


//update position
//collision to death
if(place_meeting(x + sign(hsp), y + sign(vsp), oBluePlain) ){
	if( cl == oWorld.RED_) isDead = true;
}else if(place_meeting(x + sign(hsp), y + sign(vsp), oRedPlain) ){
	if( cl == oWorld.BLUE_) isDead = true;
}else if(place_meeting(x + sign(hsp), y + sign(vsp), oBlackPlain)){
	isDead = true;
}

//horizontal collision
if((place_meeting(x+ hsp, y , oBluePlain) || place_meeting(x+ hsp, y , oRedPlain) || place_meeting(x+ hsp, y , oRBPlain) || place_meeting(x+ hsp, y , oBlackPlain))&& vsp!=0){
	while !(place_meeting(x+ sign(hsp), y , oBluePlain) || place_meeting(x+ sign(hsp), y, oRedPlain) || place_meeting(x+ sign(hsp), y, oRBPlain) || place_meeting(x+ sign(hsp), y, oBlackPlain)){
		x+= sign(hsp);	
	}
	hsp = 0;	
}
//move
x = max(min(x + hsp, room_width), 0);
if (hsp !=0 ) image_xscale = sign(hsp);

//vertical collision
if((place_meeting(x, y + vsp, oBluePlain) || place_meeting(x, y + vsp, oRedPlain) || place_meeting(x, y + vsp, oRBPlain) || place_meeting(x, y + vsp, oBlackPlain))&& vsp!=0){
	while !(place_meeting(x, y + sign(vsp), oBluePlain) || place_meeting(x, y + sign(vsp), oRedPlain) || place_meeting(x, y + sign(vsp), oRBPlain) || place_meeting(x, y + sign(vsp), oBlackPlain)){
		y+= sign(vsp);	
	}
	vsp = 0;	
}
//move
y += vsp;
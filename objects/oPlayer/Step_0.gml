//gravity
if(isAir){
vsp += global.grv;
}
y += vsp;
x = max(min(x + hsp, room_width), 0);

if (hsp !=0 ) image_xscale = sign(hsp);

//update position
if(place_meeting(x + sign(hsp), y + sign(vsp), oBluePlain) ){
	if(vsp >0) isAir = false;
	if( cl == oWorld.RED_) isDead = true;
}else if(place_meeting(x + sign(hsp), y + sign(vsp), oRedPlain) ){
	if(vsp >0) isAir = false;
	if( cl == oWorld.BLUE_) isDead = true;
}else if(place_meeting(x + sign(hsp), y + sign(vsp), oBlcckPlain)){
	if(vsp >0) isAir = false;
	isDead = true;
}else if(place_meeting(x + sign(hsp), y + sign(vsp), oRBPlain)){
	if(vsp >0) isAir = false;
}


while((place_meeting(x + hsp, y + vsp, oBluePlain) || place_meeting(x + hsp, y + vsp, oRedPlain) || place_meeting(x + hsp, y + vsp, oRBPlain) || place_meeting(x + hsp, y + vsp, oBlcckPlain))&& vsp!=0){
	vsp = max(0,vsp-1);	
}
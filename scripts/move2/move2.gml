///player would not be collide with bottom of plain

var now_co_ins = instance_place(x, y, all);
var now_co_with_plain = (now_co_ins != noone && now_co_ins.type_ ==PLAIN_);
//gravity
var v_co_ins = instance_place(x, y+1, all);
if !(!now_co_with_plain && v_co_ins != noone && v_co_ins.type_ == PLAIN_){
	vsp += global.grv;
} 
//junp detect
var v_co_ins = instance_place(x, y+5, all);
if (v_co_ins != noone && v_co_ins.type_ == PLAIN_ && !place_meeting(x,y-h_ground,v_co_ins)){
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


//horizontal collision in the future
if( now_co_with_plain && now_co_ins.cl!=MIX_ && cl !=now_co_ins.cl){
	event_user(DEATH);
}

//vertical collision in the future
if(vsp>0){
	var v_co_ins = instance_place(x, y+vsp, all);
	if( v_co_ins != noone && v_co_ins.type_ == PLAIN_ && !place_meeting(x,y-h_ground,v_co_ins)){
		while(place_meeting(x,y,v_co_ins)){//if already collide ,but not collide when player go up by a short distance
			y--;
		}
		while !(place_meeting(x, y + sign(vsp), v_co_ins)){
			y+= sign(vsp);	
		}
		if( v_co_ins.cl!=MIX_ && cl !=v_co_ins.cl ) event_user(DEATH);
		vsp = 0;	
	}
}
//move
x = clamp(x + hsp, 0+abs(sprite_width)/2, room_width-abs(sprite_width)/2);
if (hsp !=0 ) image_xscale = sign(hsp);
y += vsp + oGame.v_plain_fall/ room_speed;

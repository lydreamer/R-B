//gravity
var v_co_ins = instance_place(x, y+1, all);
if !(v_co_ins != noone && v_co_ins.type_ == PLAIN_){
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

//horizontal collision
var h_co_ins = instance_place(x+hsp, y, all);
if( h_co_ins !=noone && h_co_ins.type_ == PLAIN_ && hsp!=0){
	while !(place_meeting(x+ sign(hsp), y , h_co_ins)){
		x+= sign(hsp);	
	}
	if( h_co_ins.cl!=MIX_ && cl !=h_co_ins.cl ) event_user(DEATH);
	hsp = 0;	
}
//move
//vertical collision
var v_co_ins = instance_place(x, y+vsp, all);
if( v_co_ins != noone && v_co_ins.type_ == PLAIN_ && vsp!=0){
	while !(place_meeting(x, y + sign(vsp), v_co_ins)){
		y+= sign(vsp);	
	}
	if( v_co_ins.cl!=MIX_ && cl !=v_co_ins.cl ) event_user(DEATH);
	vsp = 0;	
}
//move
x = clamp(x + hsp, 0, room_width);
if (hsp !=0 ) image_xscale = sign(hsp);
y += vsp;

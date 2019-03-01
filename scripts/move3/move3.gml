///player would not be collide with bottom of plain
var now_co_ins = instance_place(x, y, oPlain);
var now_co_with_plain = (now_co_ins != noone);
//gravity
var v_co_ins = instance_place(x, y+1, oPlain);
if !(!now_co_with_plain && v_co_ins != noone){
	vsp += global.grv;
	isAir = true;
} else{
	isAir = false;	
	if( v_co_ins.cl!=MIX_ && cl !=v_co_ins.cl &&!invincible) event_user(DEATH);
}
//junp detect
var v_co_ins = instance_place(x, y+5, oPlain);
if (keyboard_check_pressed(vk_space) && !jumping && (v_co_ins != noone  && !place_meeting(x,y-h_ground,v_co_ins))){
	jumping = true;
	start_jump_T = get_timer();
	show_debug_message("start jump"+string(start_jump_T));
	vsp = -jumpsp;
}
if jumping {
	var c_time = get_timer();
	show_debug_message("c_time"+string(c_time));
	if (keyboard_check_released(vk_space) || (c_time - start_jump_T) > max_jumpT * power(10,6)){
		jumping = false;
	}else if keyboard_check(vk_space){
		vsp -= jumpacc ;
		show_debug_message("vsp"+string(vsp));
		
	}
}
//move control
var hinput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
if hinput != 0 {
	hsp += hinput*h_acc;
	hsp = clamp(hsp, -hsp_max,hsp_max);
} else if(isAir){
	hsp = lerp(hsp,0,air_fric);
} else{
	hsp = lerp(hsp,0,fric);
}


//horizontal collision in the future
if( now_co_with_plain && now_co_ins.cl!=MIX_ && cl !=now_co_ins.cl &&!invincible){
	event_user(DEATH);
}

//vertical collision in the future
if(vsp>0){
	var v_co_ins_list = ds_list_create();
	instance_place_list(x, y+vsp, oPlain ,v_co_ins_list,false);
	for(var i=0;i<ds_list_size(v_co_ins_list);i++){
		//var v_co_ins = instance_place(x, y+vsp, all);
		var v_co_ins = v_co_ins_list[| i];
		if( v_co_ins != noone  && !place_meeting(x,y-h_ground,v_co_ins)){
			while(place_meeting(x,y,v_co_ins)){//if already collide ,but not collide when player go up by a short distance
				y--;
			}
			while !(place_meeting(x, y + 1, v_co_ins)){
				y++;	
			}
			vsp = 0;
		}
	}
	ds_list_clear(v_co_ins_list);
}
//move
x = clamp(x + hsp, 0+abs(sprite_width)/2, room_width-abs(sprite_width)/2);
if (hsp !=0 ) image_xscale = sign(hsp);
y += vsp + oGame.v_plain_fall/ room_speed;
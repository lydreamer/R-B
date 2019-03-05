move3();
if cl == BLUE_ sprite_index = sBlueP;
if cl == RED_ sprite_index = sRedP;

y_actual = (room_height - y) + oGame.h_plain_fall;
y_record = max(y_record, y_actual - y_base);
score_ = floor(y_record/100);

if (!color_change_state){
	color_change_T += 1/room_speed;
	if(color_change_T >= color_change_CD){
		color_change_state = true;
		color_change_T = 0;
	}
}
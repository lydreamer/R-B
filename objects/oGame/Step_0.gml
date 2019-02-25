/// @description Insert description here
// You can write your code in this editor
if(!instance_exists(oPlayer)) exit;
v_plain_fall = clamp(oPlayer.y_record * fall_acc,v_plain_fall,max_v_plain_fall) + clamp((v_plus_y - oPlayer.y)/ v_plus_y, 0, 1)*max_v_plus;
h_plain_fall +=  v_plain_fall / room_speed;

//generate new plain group
if (floor(oPlayer.y_record / distance_plain_group) > latest_group_id){
	latest_group_id++;
	show_debug_message("generate: "+string(latest_group_id));
	var unrepeated_group_id = latest_group_id mod num_group;
	for (var i = 0; i < num_plain_per_group; ++i) {
		overlap_test = true; //default 
		while(overlap_test){
			new_plain_x[unrepeated_group_id,i] = random_range(0 + i * room_width / num_plain_per_group,(i+1) * room_width / num_plain_per_group); 
			new_plain_y[unrepeated_group_id,i] = 1000 - distance_plain_group * latest_group_id + random_range(-h_plain_group/2,h_plain_group/2);
			new_plain_w[unrepeated_group_id,i] = random_range(min_w_plain, max_w_plain)
			new_plain_cl[unrepeated_group_id,i] = MIX_;
			switch (new_plain_cl[unrepeated_group_id,i]) {
			    case RED_:
					new_plain_id[unrepeated_group_id,i] = instance_create_layer(new_plain_x[unrepeated_group_id,i], new_plain_y[unrepeated_group_id,i],"Plain",oRedPlain);
			        break;
			    case BLUE_:
					new_plain_id[unrepeated_group_id,i] = instance_create_layer(new_plain_x[unrepeated_group_id,i], new_plain_y[unrepeated_group_id,i],"Plain",oBluePlain);
			        break;
			    case MIX_:
					new_plain_id[unrepeated_group_id,i] = instance_create_layer(new_plain_x[unrepeated_group_id,i], new_plain_y[unrepeated_group_id,i],"Plain",oRBPlain);
			        break;
			    default:
			        // code here
			        break;
			}
			new_plain_id[unrepeated_group_id,i].image_xscale = new_plain_w[unrepeated_group_id,i] / new_plain_id[unrepeated_group_id,i].sprite_width;
			//overlap test
			overlap_test = false; //suggest that is not overlaped
			for (var j = 0; j < i; ++j) { // check if this plain collide with other plain that just created
			    with(new_plain_id[unrepeated_group_id,i]) oGame.overlap_test = place_meeting(x,y,oGame.new_plain_id[unrepeated_group_id,j]);
				if overlap_test {
					instance_destroy(new_plain_id[unrepeated_group_id,i]);
					break;
				}
			}
		}
	}
}
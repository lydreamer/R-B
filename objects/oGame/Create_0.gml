/// @description Insert description here
// You can write your code in this editor
h_plain_fall = 0;
v_plain_fall = 0; // fall pixel per second
max_v_plain_fall = 20;
fall_acc = 0.01;

v_plain_fall_plus = 0; // acceleration because of y axis of player
v_plus_y = 1000;
max_v_plus = 300;

//generate plain
h_plain_group = 70;
distance_plain_group = 140;//one group to another
min_w_plain = 150;
max_w_plain = 250;
num_group = 20;
num_plain_per_group = 4;
latest_group_id = -1; //the id of group that just generated
jump_distance_set = 180;
x_rand_para = 0.3;//decide the degree of random of x, suggest[0,0.5]
y_rand_para = 0.3;//decide the degree of random of y, suggest[0,0.5]

//generate item
y_above_plain = 30;

//initialize plain data
for (var i=0; i<num_group; i++) {
    for (var j = 0; j < num_plain_per_group; j++) {
	    new_plain_id[i,j] = noone;
	    new_plain_x[i,j] = 0;
		new_plain_y[i,j] = 0;
		new_plain_w[i,j] = 0;
		new_plain_cl[i,j] = MIX_;
	}
	new_item_id[i] = noone;
	new_item_type[i] = DRUG;
	new_item_x[i] = 0;
	new_item_y[i] = 0;
	new_item_cl[i] = noone;
}

show_debug_message("Begin"+string(latest_group_id));
randomise();
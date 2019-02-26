/// @description Insert description here
if (other.item_ != noone) instance_destroy(other.item_); 
other.item_ = instance_create_layer(-100,-100,"Item",object_index);

instance_destroy();
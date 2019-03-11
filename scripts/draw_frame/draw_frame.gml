///@param x,y,currentT,totalT,color
var x_ = argument0;
var y_ = argument1;
var currentT = argument2;
var totalT = argument3;
var color = argument4;

draw_set_color(color);
draw_set_alpha(0.5);
draw_rectangle(x_ - sprite_get_width(sFrame)/2, y_ - sprite_get_height(sFrame)/2, 
	x_ + sprite_get_width(sFrame) * (0.5-currentT/totalT), y_ + sprite_get_height(sFrame)/2,false);
draw_set_alpha(1);
draw_set_font(font0);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_text(x_+1,y_+1,string(ceil(totalT-currentT)));
draw_set_color(c_white);
draw_text(x_,y_,string(ceil(totalT-currentT)));

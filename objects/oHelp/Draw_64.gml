/// @description Insert description here
// You can write your code in this editor
draw_set_font(font0);
draw_set_halign(fa_center);
for (i=0; i< array_length_1d(help_text); i++) {
    draw_text(room_width/2,room_height*0.2 + i*50,help_text[i]);
}
move2();

y_actual = (room_height - y) + oGame.h_plain_fall;
y_record = max(y_record, y_actual - y_base);
score_ = floor(y_record/100);
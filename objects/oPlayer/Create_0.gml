hsp = 0;
vsp = 0;
jumpsp = 10;//initial sp
jumpacc = 0.8;//accelerate per second
start_jump_T = 0;
max_jumpT = 0.3;//time that player could acclerate jump speed
h_ground = 3;//to prove not fall down from plain

h_acc = 1;
hsp_max = 6;
bouce = 0.2;
isAir = true;
jumping = false;

fric = 0.25;
air_fric = 0.03

cl=BLUE_;

item_ = noone;

y_base = room_height - y;
y_record = 0;//height record
y_actual = 0;//include plain falling
score_ = 0;

shoot_CD = 0.2;
shootT = 0;

invincible = false;//could not die
invincibleT = 0;
color_change_invincibleT = 0.5;
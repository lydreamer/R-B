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

fric = 0.2;
air_fric = 0.05

cl=BLUE_;

item_ = noone;

y_base = room_height - y;
y_record = 0;//height record
y_actual = 0;//include plain falling
score_ = 0;
image_speed=0;
image_index=0;
if room==room1 or room==room0
depth=210;

can=5;
randomize();
grv = 1; //gravity
hsp = 0; //current horizontal speed
vsp = 0; //current vertical speed
hsp_walk = 6; //walk speed
vsp_jump = -16; //jump speed

key_jump=false;
jumpready=true;
aftertime=0;
trashtime=0;

status=0;
woodtime=random_range(120,480);
rocktime=60;
runtime=10;
mudtime=10;
grasstime=irandom_range(50,70);
alphatime=0.05;
attacktime=0;

warningscale=0;
warningyon=0;
//pressX=0;
//pressX
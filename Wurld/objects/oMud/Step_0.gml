if x<=oDeer.x-500 or y<=global.zemin+100
instance_destroy();

angle+=0.4;
vsp+=0.2;

if hsp>0
hsp-=0.01;
y+=vsp;
x-=hsp;
if vsp>=0
image_alpha-=0.05;
image_angle+=angle;
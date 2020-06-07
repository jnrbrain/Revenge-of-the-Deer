if room==room0 and x>=5000
room_goto(room1);
else if room==room1 and x>=9800
room_goto(roomEnd);

randomize();
if rocktime>0
rocktime-=random_range(0.2,2);
else if rocktime<=0 and status==0
{
	if room==0
	instance_create_layer(x+540+irandom_range(-60, 60), 495, "Instances", oRock);
	rocktime=irandom_range(60,180);
}

if mudtime>0
mudtime-=random_range(0.5,1.5);
else if mudtime<=0 and status==0
{
	instance_create_layer(bbox_left-random_range(0,15), global.zemin-random_range(0,15), "Instances", oMud);
	mudtime=random_range(8,12);
	
}
if grasstime>0
grasstime-=random_range(0.8,1.2);
else if grasstime<=0 and status==0
{
	instance_create_layer(bbox_right+random_range(240, 480), global.zemin, "Instances", oGrass);
	grasstime=random_range(50,70);
	
}

if trashtime>0
trashtime-=random_range(0.8,1.2); 
else if trashtime<=0 and status==0
{
	instance_create_layer(bbox_right+random_range(240, 300), global.zemin, "Instances", oTrash);
	trashtime=random_range(40,60);
}

if woodtime>0 and status==0
woodtime-=random_range(0.5,1.5);
else if woodtime<=0
{
	instance_create_layer(bbox_right+540, global.zemin, "Instances", oLog);
	instance_create_layer(bbox_right+540-sprite_get_width(sLog)/2+10, bbox_bottom-sprite_get_height(sLog)+6, "Instances", oLog1);
	instance_create_layer(bbox_right+540+50, global.zemin-sprite_get_height(sHuman_axe)-5, "Instances", oHuman_axer);
	instance_create_layer(bbox_right+irandom_range(500,700), global.zemin, "Instances", oTrash);
	woodtime=random_range(120,480);
}

if !instance_exists(oHuman)
instance_create_layer(oDeer.x-240, y+10, "Instances", oHuman);

if runtime>0
runtime-=random_range(0.5,1.5);
else if runtime<=0
{
	runtime=irandom_range(8,12);
	hsp_walk=random_range(5, 7);
}

if status==0
{
	if !audio_is_playing(deer_run_sound)
	audio_play_sound(deer_run_sound, 0, true);
	x+=hsp_walk;
	if image_speed!=hsp_walk/6
	image_speed=hsp_walk/6;
	if sprite_index!=deer_run
	sprite_index=deer_run;
	vsp=0;
	if attacktime<60
	attacktime+=1;
}

else if status==1
{
	audio_stop_sound(deer_run_sound);
	x+=hsp_walk;
	if image_speed!=1 and image_index<image_number-1
	{
		if !audio_is_playing(deerjump)
		audio_play_sound(deerjump, 0, 0);
		image_speed=1;
	}
	if sprite_index!=deer_jump
	sprite_index=deer_jump;
}
else if status==3
{
	audio_stop_sound(deer_run_sound);
	x+=hsp_walk;
	if image_speed!=0
	image_speed=0;
	if image_index!=image_number-1
	image_index=image_number-1
	if bbox_bottom>=global.zemin+vsp
	status=0;
}
else if status==2
{
	audio_stop_sound(deer_run_sound);
	if image_speed!=1
	image_speed=1;
	if sprite_index!=deer_attack
	sprite_index=deer_attack;
	if image_index<=2
	{
		if oHuman.bbox_right>=bbox_left
		oHuman.status=2;
	}
}
else if status==4
{
	audio_stop_sound(deer_run_sound);
	if image_speed!=0
	image_speed=0;
	
	aftertime+=1;
	if aftertime>=60
	{
		status=0;
		aftertime=0;
	}
	if !audio_is_playing(deer_hunt_sound)
	audio_play_sound(deer_hunt_sound, 0, false);
}
hsp = hsp_walk;
//Work out where to move vertically

//Work out if we should jump
if bbox_bottom>=y-1 and (key_jump)
{
	if sprite_index!=deer_jump
	sprite_index=deer_jump;
	if image_index!=0
	image_index=0;
	vsp = vsp_jump;
}

if (x<=room_width-350 and image_xscale==1) or (x>=350 and image_xscale==-1)
x = x + hsp;

vsp = vsp + grv;
//Check for vertical collisions and then move if we can
var onepixel = sign(vsp) //up = -1, down = 1.
if (bbox_bottom>=global.zemin-vsp)
{
	//move as close as we can
	while (bbox_bottom<=global.zemin-onepixel)
	{
	    y = y + onepixel;
	}
	if jumpready!=true
	jumpready=true;
	vsp = 0;
}
y = y + vsp;
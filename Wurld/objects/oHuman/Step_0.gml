randomize();

if status==0
{
	if attackingtime<90
	attackingtime+=1;
	if x<oDeer.bbox_left+sprite_width/3 and distance_to_object(oDeer)<=700
	{
		if sprite_index!=sHuman_run
		sprite_index=sHuman_run;
		if image_speed!=1
		image_speed=1;
		if x<oDeer.bbox_left+sprite_width/2
		x+=oDeer.hsp_walk+random_range(-0.05, 0.7);
	}
	else if x>=oDeer.bbox_left+sprite_width/3
	{
		if attackingtime>=90
		{
			oDeer.status=4;
			attackingtime=0;
			if image_index!=0
			image_index=0;
			status=1;
		}
		if attackingtime<90
		{
			if sprite_index!=sHuman_run
			sprite_index=sHuman_run;
			if image_speed!=1
			image_speed=1;
			if x<oDeer.bbox_left+sprite_width/2
			x+=oDeer.hsp_walk+random_range(-0.2, 0.7);
		}
	}
}
else if status==1
{
	if image_speed!=1 and image_index!=image_number-1
	image_speed=1;
	if sprite_index!=sHuman_axe
	sprite_index=sHuman_axe;
}
else if status==2
{
	if !audio_is_playing(human_hit)
	audio_play_sound(human_hit, 0, false);
	image_alpha-=0.05;
	if image_alpha<=0
	instance_destroy();
}
if distance_to_object(oDeer)>700
	x=oDeer.x-sprite_get_width(deer_run);
	
vsp=vsp+1;
var onepixel = sign(vsp) //up = -1, down = 1.
if (bbox_bottom>=global.zemin-vsp)
{
	//move as close as we can
	while (bbox_bottom<=global.zemin-onepixel)
	{
		y = y + onepixel;
	}
	vsp = 0;
}
y = y + vsp;
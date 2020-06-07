if sprite_index==deer_attack
	{
		if image_index!=0
		image_index=0;
		if sprite_index!=deer_run
		sprite_index=deer_run;
		status=0;
		attacktime=0;
	}
	if sprite_index==deer_jump
	{
		if image_index!=image_number-1
		image_index=image_number-1;
		if image_speed!=0
		image_speed=0;
		status=3;
	}
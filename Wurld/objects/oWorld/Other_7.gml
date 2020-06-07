if !audio_is_playing(End_sound)
{
	instance_create_layer(x, y, "Instances", oSpaceTrash);
	instance_create_layer(x, y, "Instances", oSpaceTrash);
	instance_create_layer(x, y, "Instances", oSpaceTrash);
	instance_create_layer(x, y, "Instances", oSpaceTrash);
	instance_create_layer(x, y, "Instances", oSpaceTrash);
	instance_create_layer(x, y, "Instances", oSpaceTrash);
	instance_create_layer(x, y, "Instances", oSpaceTrash);
	instance_create_layer(x, y, "Instances", oSpaceTrash);
	instance_create_layer(x, y, "Instances", oSpaceTrash);
	instance_create_layer(x, y, "Instances", oSpaceTrash);
	audio_play_sound(End_sound, 0, 0);
	image_speed=0;
	image_index=image_number-1;
}
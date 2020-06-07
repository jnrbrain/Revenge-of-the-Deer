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

if distance_to_object(oDeer)<=200
{
	if image_speed!=1
	image_speed=1;
}
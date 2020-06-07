if x<=oDeer.x-480
instance_destroy();

vsp=vsp+grv;
var onepixel = sign(vsp) //up = -1, down = 1.
if (bbox_bottom>=492-vsp)
{
	//move as close as we can
	while (bbox_bottom<=492-onepixel)
	{
	    y = y + onepixel;
		if image_speed!=0
		image_speed=0;
		if image_index!=0
		image_index=0;
	}
	vsp = 0;
}
y = y + vsp;
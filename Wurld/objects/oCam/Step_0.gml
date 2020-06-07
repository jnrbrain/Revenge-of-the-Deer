x+=(xTo-x)/5;
y+=yTo-y;

if follow!=noone
{
	follow=oDeer;
	xTo=follow.x;
	yTo=follow.y-75;
}
var vm=matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
camera_set_view_mat(camera, vm);
pm=matrix_build_projection_ortho(720, 405, 1, 10000);//128*72 //132*74.25
camera_set_proj_mat(camera, pm);
if room==room0
{
layer_x("Background2", x/1.05);
layer_x("Backgrounds3", x/2);
layer_x("Backgrounds4", x/3);
layer_x("Backgrounds5", x/3.5);
layer_x("Backgrounds6", x/4);
}

else if room==room1
{
	layer_x("Background2", x/1.05);
	layer_x("Backgrounds_2", x/2);
	layer_x("Backgrounds_1", x/3);
}
	if !xTo==oDeer.x
	xTo=oDeer.x;
	if !yTo==oDeer.y-75
	yTo=oDeer.y-50
x+=(xTo-x)/5;
y+=yTo-y;
if follow!=noone
{
	xTo=follow.x;
	yTo=follow.y;
}

var vm=matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
camera_set_view_mat(camera, vm);
pm=matrix_build_projection_ortho(480, 270, 1, 10000);//128*72 //132*74.25
xTo=(follow.x)/6;
yTo=(follow.y)/6;

camera_set_proj_mat(camera, pm);

layer_x("Backgrounds_1", x/5);
layer_x("Backgrounds_2", x/4);
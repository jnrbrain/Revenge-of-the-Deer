camera=camera_create();
var vm=matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
pm=matrix_build_projection_ortho(720, 405, 1, 0);
camera_set_view_mat(camera, vm);
view_camera[0]=camera;

follow=oDeer;
xTo=oDeer.x;
yTo=oDeer.y-540;
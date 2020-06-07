if device_mouse_check_button_pressed(0, mb_left)and point_in_rectangle(device_mouse_x(0), device_mouse_y(0), bbox_left, bbox_top, bbox_right, bbox_bottom)
{
	if y<=room_height/2
	room_goto(room0);
	if y>room_height/2
	room_goto(rCredits);
}
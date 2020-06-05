image_alpha=1;
image_blend=c_white;
if gesture_get_double_tap_time() != 0.05
gesture_double_tap_time(0.05);
	
surface_resize(application_surface, ideal_width, ideal_height);
display_set_gui_size(ideal_width, ideal_height);
display_set_gui_maximize(1, 1, 0, 0);
window_set_size(ideal_width, ideal_height);
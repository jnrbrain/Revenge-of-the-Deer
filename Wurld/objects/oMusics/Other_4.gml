speed=60;
image_alpha=1;
image_blend=c_white;
if gesture_get_double_tap_time() != 0.05
gesture_double_tap_time(0.05);

if window_get_fullscreen()==false
window_set_fullscreen(true);
surface_resize(application_surface, ideal_width, ideal_height);
display_set_gui_size(ideal_width, ideal_height);
display_set_gui_maximize(1, 1, 0, 0);
window_set_size(ideal_width, ideal_height);
audio_stop_all();

if room==rMainMenu
	audio_play_sound(main_music, 0, 0);
if room==room0 or room==room1
	audio_play_sound(main_music, 0, true);
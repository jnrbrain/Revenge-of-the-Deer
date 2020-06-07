if alphatime>0
alphatime-=0.001;
draw_set_alpha(alphatime);
draw_rectangle_color(display_get_gui_width()/2, 0, display_get_gui_width(), display_get_gui_height(), c_blue,c_blue,c_blue,c_blue, false);
draw_rectangle_color(0, 0, display_get_gui_width()/2, display_get_gui_height(), c_red, c_red, c_red, c_red, false);
draw_set_alpha(1);

if device_mouse_x_to_gui(0)>=display_get_gui_width()/2 and device_mouse_check_button_pressed(0, mb_left) and jumpready==true
{
	jumpready=false;
	status=1;
	key_jump=true;
}
else if device_mouse_x_to_gui(0)>=display_get_gui_width()/2 and device_mouse_check_button(0, mb_left)
{
	key_jump=false;
}
else if device_mouse_x_to_gui(0)< display_get_gui_width()/2 and device_mouse_check_button_pressed(0, mb_left) and attacktime>=60
{
	attacktime=0;
	if sprite_index!=deer_attack
	sprite_index=deer_attack;
	if image_index!=0
	image_index=0;
	status=2;
}
if warningscale<1.5 and warningyon==1
warningscale+=0.05;
else if warningscale>1 and warningyon==-1
warningscale-=0.05;
if warningscale>=1.5
warningyon=-1;
else if warningscale<=1
warningyon=1;

for (var i = 0; i < can; i += 1)
{
draw_sprite(sHearth, 0, 100+50*i, 200);
}

if instance_exists(oHuman)
{
	if distance_to_object(oHuman)<=75
	draw_sprite_ext(sWarning, 1, 100, display_get_gui_height()/2, 2*warningscale, 2*warningscale, 0, c_white, 1);
}

var deger;
if room==room0
deger = (x / 5000) * 100;
else if room==room1
deger = (x / 9800) * 100;
draw_healthbar(200, 50, display_get_gui_width()-200, 65, deger, c_black, c_black, c_white, 0, false, true);
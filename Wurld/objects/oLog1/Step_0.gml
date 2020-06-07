if oDeer.x>=x-200 and tetikle!=true
tetikle=true;

if x<=oDeer.x-480
instance_destroy();

if tetikle==true
{
	fallspd+=0.1;
	if image_angle<95
	image_angle+=0.01+fallspd;
}
if image_angle>=95
image_alpha-=0.03;
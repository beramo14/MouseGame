/// @description Insert description here
// You can write your code in this editor
count_d-=1;
if(place_meeting(x,y,player))
{
	image_index=1;
}
if(image_index == 1)
{
	count_d=2;
	if(count_d==1)
	{
		count+=1;
	}
	delay-=1;
	if(delay<0)
	{
		image_index = 0;
		delay=100;
	}
}
else if(image_index == 0)
{
	count_d=2;
	if(count_d==1)
	{
		count-=1;
	}
	instance_activate_object(water);
	water.image_alpha = 1;
	water.delay = 100;
}
if(count == instance_number(button))
{
	if(instance_exist(water)
	{
		water.image_alpha-=0.1;
		if(water.image_alpha<0)
		{
			instance_dactivate_object(water);
		}
	}
}

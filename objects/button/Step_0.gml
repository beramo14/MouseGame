/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,player))
{
	count +=1;
	if(count == instance_number(button))
	{
			image_index = 1;	
	}
}

if(image_index == 1)
{
	delay-=1
	if(delay<0)
	{
			image_index = 0;
			delay=100;
	}
}

if(image_index == 0)
{
	instance_activate_object(water);
	water.image_alpha = 1;
	water.delay = 100;
}

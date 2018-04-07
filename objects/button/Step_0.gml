/// @description Insert description here
 // You can write your code in this editor
 if(place_meeting(x,y,player))
 {
 		image_index = 1;
		delay=310;
 }
 
 if(image_index == 1)
 {
 	delay-=1
 	if(delay<0)
 	{
 			image_index = 0;
			delay=310;
 	}
	if(instance_exists(water))
	{
		water.image_alpha-=0.1;
		if(water.image_alpha<0)
		{
			instance_deactivate_object(water);
		}
	}
 }
 
 if(image_index == 0)
 {
	instance_activate_object(water);
 	water.image_alpha = 1+instance_number(button)/10;
 }
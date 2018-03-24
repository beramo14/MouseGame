if(button.image_index ==1)
{
	delay -= 1; 
	image_alpha -= 0.1;
	
	if(image_alpha == 0)
	{
		delay=0;
		instance_deactivate_object(water);
	}
}

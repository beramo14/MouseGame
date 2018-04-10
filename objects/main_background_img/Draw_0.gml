draw_self();

if(image_fade==0)
{
	image_alpha-=0.008;	
}else if(image_fade==1)
{
	image_alpha+=0.008;
}

if(image_alpha<=0)
{
	image_index+=1;
	image_fade=1;
}
else if(image_alpha>=1)
{
	image_fade=0;
}

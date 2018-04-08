

////////////강제 창모드//////////////
if(window_get_fullscreen()==true)
{
	window_set_fullscreen(false);
}

//////////////강제 사이즈조절/////////////
if((window_get_height()==room_height&&window_get_width()==room_width)==false)
{
	window_set_size(room_width,room_height);
}



////////////창랜덤 이동//////////////
if(player.tracking_mode==true)
{
	window_set_position(window_get_x()+(Rx-window_get_x())/2,window_get_y()+(Ry-window_get_y())/2);
	delay-=1;
	if(delay<1)
	{
		Rx_=irandom_range(-2,2)
		Ry_=irandom_range(-2,3)
		if(Rx_>0)
		{
			Rx-=irandom_range(xRr1,xRr2);
		}
		else if(Rx_<0)
		{
			Rx+=irandom_range(xRr1,xRr2);
		}
	
		if(Ry_>0)
		{
			Ry-=irandom_range(yRr1,yRr2);
		}else if(Ry_<0)
		{
			Ry+=irandom_range(yRr1,yRr2);
		}
		delay=40;
	}
}


////////////강제 창모드//////////////
if(window_get_fullscreen()==true)
{
	window_set_fullscreen(false);
}





////////////창랜덤 이동//////////////


if(player.tracking_mode==false)
{
	Gx=window_get_x();
	Gy=window_get_y();
	Rx=window_get_x();
	Ry=window_get_y();
}

if(player.tracking_mode==true)//////버그 : 죽고나서 창옮기고 트래킹모드로 바뀌면 창이 옮기기전으로 이동함 //succsex
{
	window_set_position(window_get_x()+(Rx-window_get_x())/5,window_get_y()+(Ry-window_get_y())/5);
	delay-=1;
	if(delay<1)
	{
		Rx_=irandom_range(-1,1)
		Ry_=irandom_range(-1,1)
		
		///x축랜덤/////
		if(Rx_>0)
		{
			Rx-=irandom_range(xRr1,xRr2);
		}
		else if(Rx_<0)
		{
			Rx+=irandom_range(xRr1,xRr2);
		}
		
		 ///y축랜덤/////
		if(Ry_>0)
		{
			Ry-=irandom_range(yRr1,yRr2);
		}else if(Ry_<0)
		{
			Ry+=irandom_range(yRr1,yRr2);
		}
		delay=30;
	}

}
/// @description Insert description here
// You can write your code in this editor
//터치스크린 감지 시스템 만들기 한프레임에 좌표가 100이상 움직으면 터치로 인식
if(position_meeting(mouse_x,mouse_y,player)&&mouse_check_button_released(mb_left))
{
	c=1;
	sprite_index = spt0_mousePnt
	image_index=0;
}
if(c==1)
{
	x=mouse_x;
	y=mouse_y;
}



if(!instance_exists(key)&&place_meeting(x,y,FinishLine_parents))
{
	room_goto_next()	
}


if(place_meeting(x,y,wall_parents)&&sprite_index==spt0_mousePnt)
{
	image_index=1;
}
if(image_index==1)
{
	c=0;
	room_speed=1;
	delay-=1;
	if(delay<1)
	{
		room_speed=60;
		room_restart()
	}	
}



if(place_free(x,y)&&sprite_index==spt0_mousePnt)
{
	image_index=1;
}
if(image_index==1)
{
	c=0;
	room_speed=1;
	delay-=1;
	if(delay<1)
	{
		room_speed=60;
		room_restart()
	}	
}


if(keyboard_check_released(ord("R")))
{
	game_restart()
}



if(keyboard_check_released(ord("N")))
{
	room_goto_next()
}

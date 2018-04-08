
//터치스크린 감지 시스템 만들기 한프레임에 좌표가 100이상 움직으면 터치로 인식 //완료 //는 개뿔

if(position_meeting(mouse_x,mouse_y,player)&&mouse_check_button_released(mb_left))
{
	tracking_mode=true;
	sprite_index = spt0_mousePnt;
	image_index=0;
}
if(tracking_mode==true)
{
	x += (mouse_x - x);
	y += (mouse_y - y);
}


if(instance_exists(key)==false&&place_meeting(x,y,FinishLine_parents))
{

	room_goto_next()
}


if(place_meeting(x,y,wall_parents)&&sprite_index==spt0_mousePnt)
{
	image_index=1;
}
if(image_index==1)
{
	tracking_mode=false;
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
	tracking_mode=false;
	room_speed=1;
	delay-=1;
	if(delay<1)
	{
		room_speed=64;
		room_restart()
	}
}



//////////터치 및 버그 방지 코드 ////////////

if(abs(temp_x-x)>50||abs(temp_y-y)>50)  
{
	
	if(c==1&&collision_line(temp_x,temp_y,mouse_x,mouse_y,wall_parents,1,1)) //도는 벽 지나갈떄 버그있음 //고칠것//완료
	{
		s=1
	}
}
switch(s)
{
	case 1 :
	{
		show_message("터치 또는 버그사용이 감지되었습니다.");
		room_restart();
	}
	case 0:
	{
		temp_x=x;
		temp_y=y;
	}
}



//////////////개발자 전용기능//////////////

//개발자 모드 활성화
if(global.devmode==false&&keyboard_check_direct(vk_control)&&keyboard_check_direct(vk_alt)&&keyboard_check_pressed(ord("D"))&&show_question("개발자 모드를 활성화 하시겠습니까?"))
{
	global.devmode=true;
	show_message("개발자 모드 활성화");
}

//개발자 모드 비활성화
if(global.devmode&&keyboard_check_direct(vk_control)&&keyboard_check_direct(vk_alt)&&keyboard_check_pressed(ord("D"))&&show_question("개발자 모드를 비활성화 하시겠습니까?"))
{
	global.devmode=false;
	show_message("개발자 모드 비활성화");
}


if(global.devmode)//개발자용
	{
	if(keyboard_check_released(ord("R"))) 
	{
		game_restart()
	}else if(keyboard_check_released(ord("N")))
	{
		if(room==room_last)
		{
			show_message("마지막룸입니다");	
		}else	room_goto_next();
	}else if(keyboard_check_released(ord("B")))
	{
		room_goto_previous();
	}
}

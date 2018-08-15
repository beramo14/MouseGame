
//터치스크린 감지 시스템 만들기 한프레임에 좌표가 100이상 움직으면 터치로 인식 //완료 //는 개뿔//는 해결이야

if(tracking_mode==true)
{
	x=mouse_x;
	y=mouse_y;
}else if(global.pause_sens==true)
{
	sprite_index=spt_mouseStart;
}



//////////터치 및 버그 방지 코드 ////////////

if(keyboard_get_numlock()==false)	keyboard_set_numlock(true); ///////넘패드 조작 방지///////

if(abs(temp_x-x)>50||abs(temp_y-y)>50)
{
	if(tracking_mode==true&&collision_line(temp_x,temp_y,x,y,wall_parents,1,1)!=noone) //도는 벽 지나갈떄 버그있음 //고칠것//완료.//는 개뿔 이거 좀 더 보완 할것
	{
		image_index=1;
	}
}

if(abs(temp_m_x-mouse_x)>150||abs(temp_m_y-mouse_y)>150)
{
	image_index=1;
}
temp_m_x=mouse_x;
temp_m_y=mouse_y;
temp_x=x;
temp_y=y;



if(room_last_check())
{
	global.chapter_clear_bool=true;
	show_message("CHAPTER CLEAR!");
	room_goto(chapter_main);
}


else if(instance_exists(key)==false&&place_meeting(x,y,FinishLine_parents)) ////키를 다먹고 통과할때/////
{
	tracking_mode = false;
	
	
	room_goto_next();
}


if(instance_exists(key)==true&&place_meeting(x,y,FinishLine_parents)&&sprite_index==spt0_mousePnt&&image_index==0)////키가 아직 남았는데 통과할때////
{
	image_index=1;	////죽는 판정 감지하는 변수 만들어서 보기쉽게 할것
}


//////벽에 충돌했을때//////
if(place_meeting(x,y,wall_parents)&&sprite_index==spt0_mousePnt&&image_index==0)
{
	image_index=1;
}


///////밖에 있을때/////
if(place_free(x,y)&&sprite_index==spt0_mousePnt&&image_index==0)//스크립트로 줄이기//sprite_index==spt0_mousePnt&&image_index==0 이부분
{
	image_index=1;
}


if(image_index==1&&sprite_index==spt0_mousePnt)
{
	tracking_mode=false;	///////사망판정 후 죽은채로 줌직임
	room_speed=1;
	delay-=1;
	if(delay<1)
	{
		room_speed=60;
		global.total_death_count+=1; /////////후에 전적시스템도입 예정
		global.death_count+=1;
		room_restart()
	}
}



/// @description Insert description here
// You can write your code in this editor
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

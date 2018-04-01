
//글자 흔들기
x+=random_range(-s,s);
y+=random_range(-s,s);


//개발자 모드 활성화
if(!global.devmode&&keyboard_check_direct(vk_control)&&keyboard_check_direct(vk_alt)&&keyboard_check_pressed(ord("D"))&&show_question("개발자 모드를 활성화 하시겠습니까?"))
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

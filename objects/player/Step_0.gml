/// @description Insert description here
// You can write your code in this editor
/*
드로우에추가해라
draw_self()
draw_text_color(instance_number(button),100,40,c_black,c_black,c_black,c_black,1)
draw_text_color(button.count,200,40,c_black,c_black,c_black,c_black,1)
*/
if(position_meeting(mouse_x,mouse_y,player)&&mouse_check_button_released(mb_left))
{
	c=1;
	sprite_index = spt0_mousePnt
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


if(place_meeting(x,y,wall_parents))
{
	room_restart()
}



if(place_free(x,y))
{
	room_restart()
}



if(keyboard_check_released(ord("R")))
{
	game_restart()
}



if(keyboard_check_released(ord("N")))
{
	room_goto_next()
}

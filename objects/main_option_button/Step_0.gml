/// @description Insert description here
// You can write your code in this editor
if(position_meeting(mouse_x,mouse_y,main_option_button)&&mouse_check_button_released(mb_left))
{
	c+=1;
}
if(c%2==0)
{
	instance_create_depth(room_width/2,room_height/2,0,option_menu);	
}
else if(c%2==1)
{
		instance_deactivate_object(option_menu);
}
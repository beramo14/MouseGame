if(global.chapter_button_clear==true)
{
	if(position_meeting(mouse_x,mouse_y,self)==true)
	{
		sprite_index=spt_chapter_sel_wall_spin_button1;
	}
	else if(position_meeting(mouse_x,mouse_y,self)==false)
	{
		sprite_index=spt_chapter_sel_wall_spin_button;
	}
}
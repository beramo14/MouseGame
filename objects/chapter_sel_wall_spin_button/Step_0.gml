if(global.chapter_clear==4)
{
	if(position_meeting(mouse_x,mouse_y,self)==true)
	{
		sprite_index=spt_chapter_sel_wall_spin_button1;
	}
	else if(position_meeting(mouse_x,mouse_y,self)==false)
	{
		sprite_index=spt_chapter_sel_wall_spin_button;
	}
}else sprite_index=spt_chapter_sel_question;
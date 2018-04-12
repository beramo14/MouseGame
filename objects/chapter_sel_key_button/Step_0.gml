if(global.chapter_clear==1)
{
	if(position_meeting(mouse_x,mouse_y,self)==true)
	{
		sprite_index=spt_chapter_sel_key_button1;
	}
	else if(position_meeting(mouse_x,mouse_y,self)==false)
	{
		sprite_index=spt_chapter_sel_key_button;
	}
}else sprite_index=spt_chapter_sel_question;
if(room==global.chapter_player_last_room&&instance_exists(key)==false&&place_meeting(x,y,FinishLine_parents))
{
	global.chapter_player_clear=true;
	return true;
}
else if(room==global.chapter_key_last_room&&instance_exists(key)==false&&place_meeting(x,y,FinishLine_parents))
{
	global.chapter_key_clear=true;
	return true;
}
else if(room==global.chapter_spin_last_room&&instance_exists(key)==false&&place_meeting(x,y,FinishLine_parents))
{
	global.chapter_spin_room=true;
	return true;
}/*
else if(room==global.chapter_button_last_room&&instance_exists(key)==false&&place_meeting(x,y,FinishLine_parents))
{
	global.chapter_button_clear=true;
	return true;
}
else if(room==global.chapter_wall_spin_last_room&&instance_exists(key)==false&&place_meeting(x,y,FinishLine_parents))
{
	global.chapter_wall_spin_clear=true;
	return true;
}*/else return false;
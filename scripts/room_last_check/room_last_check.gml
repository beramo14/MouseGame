if(room==global.chapter_player_last_room&&instance_exists(key)==false&&place_meeting(x,y,FinishLine_parents)&&s!=1)
{
	show_message("CHAPTER CLEAR!");
	global.chapter_player_clear=true;
	global.chapter_clear_bool=true;
	room_goto(chapter_main);
}
else if(room==global.chapter_key_last_room&&instance_exists(key)==false&&place_meeting(x,y,FinishLine_parents)&&s!=1)
{
	show_message("CHAPTER CLEAR!");
	global.chapter_key_clear=true;
	global.chapter_clear_bool=true;
	room_goto(chapter_main);
}/*
else if(room==global.chapter_spin_last_room&&instance_exists(key)==false&&place_meeting(x,y,FinishLine_parents)&&s!=1)
{
	show_message("CHAPTER CLEAR!");
	global.chapter_spin_room=true;
	global.chapter_clear_bool=true;
	room_goto(chapter_main);
}
else if(room==global.chapter_button_last_room&&instance_exists(key)==false&&place_meeting(x,y,FinishLine_parents)&&s!=1)
{
	show_message("CHAPTER CLEAR!");
	global.chapter_button_clear=true;
	global.chapter_clear_bool=true;
	room_goto(chapter_main);
}
else if(room==global.chapter_wall_spin_last_room&&instance_exists(key)==false&&place_meeting(x,y,FinishLine_parents)&&s!=1)
{
	show_message("CHAPTER CLEAR!");
	global.chapter_wall_spin_clear=true;
	global.chapter_clear_bool=true;
	room_goto(chapter_main);
}*/else if(instance_exists(key)==false&&place_meeting(x,y,FinishLine_parents)&&s!=1) ////키를 다먹고 통과할때/////
{
	room_goto_next();
}
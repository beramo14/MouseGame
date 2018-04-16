if(instance_exists(player)==true && global.pause_sens==false && player.image_index!=1)
{
	global.pause_sens=true;
	player.tracking_mode=false;
}
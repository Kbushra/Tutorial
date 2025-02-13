random_get_seed();

global.movement = true;

if !variable_global_exists("respawn")
{
	global.respawn = 0; //Doesnt need to change, only needs to exist to know if a reset occurred
	global.roomid = rmStart;
	global.xpos = 80;
	global.ypos = -96;
	
	global.state = 0;
}

pauseMovement();

room_goto(global.roomid);
objPlayer.x = global.xpos;
objPlayer.y = global.ypos;

draw_set_font(fntMain);
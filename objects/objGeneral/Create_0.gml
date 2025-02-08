random_get_seed();

global.movement = true;

pauseMovement();

room_goto(rmStart);
objPlayer.x = 128;
objPlayer.y = 256;

draw_set_font(fntMain);
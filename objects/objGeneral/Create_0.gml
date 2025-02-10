random_get_seed();

global.movement = true;

pauseMovement();

room_goto(rmStart);
objPlayer.x = 80;
objPlayer.y = -96;

draw_set_font(fntMain);
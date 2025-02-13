if instance_exists(objTransition) { exit; }
if global.state > 0 { draw_sprite(sprHook, 0, 8, 8); }
if global.state > 1 { draw_sprite(sprSpike, 0, 40, 8); }
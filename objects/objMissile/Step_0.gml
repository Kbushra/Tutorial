direction = point_direction(x, y, objPlayer.x+12, objPlayer.y+30);
image_angle = direction;
speed = 3;

if place_meeting(x, y, objPlayer) { objPlayer.state = "D"; instance_destroy(); }
if place_meeting(x, y, objAttack) { instance_destroy(); }
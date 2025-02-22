image_angle += 2;
depth = objPlayer.depth + 1;
direction = point_direction(x, y, objPlayer.x, objPlayer.y);
speed = 0.2;

timer--;
if timer <= 0
{
	instance_create_layer(x, y, "Instances", objBeam);
	timer = 360;
}
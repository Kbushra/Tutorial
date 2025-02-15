depth = objTutorialDude.depth+1;

direction = point_direction(x, y, objPlayer.x+12, objPlayer.y+30);
image_angle = direction;
speed = 2;

if place_meeting(x, y, objPlayer) { objPlayer.state = "D"; instance_destroy(); }
if place_meeting(x, y, objAttack)
{
	if !instance_exists(objCutsceneParry) && global.state < 4
	{ instance_create_layer(-99, -99, "Instances", objCutsceneParry); }
	
	instance_destroy();
}
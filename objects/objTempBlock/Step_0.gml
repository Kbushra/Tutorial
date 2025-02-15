if place_meeting(x, y, objPlayer)
{
	collTimer--;
	if collTimer <= 0
	{
		collTimer = 5;
		
		solid = false;
		visible = global.temp == reqTemp;
		image_alpha = 0.2;
	}
}
else
{
	collTimer = 5;
	
	solid = global.temp == reqTemp;
	visible = solid;
	image_alpha = 1;
}

if reqTemp == "H" { sprite_index = sprHotBlock; }
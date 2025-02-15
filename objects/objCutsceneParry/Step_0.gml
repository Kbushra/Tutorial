objTutorialDude.atkTimer = 60;

dialogueTimer--;
if dialogueTimer <= 0 { flag++; dialogueTimer = 60; }

if flag >= 3
{
	with (objTutorialDude)
	{
		y -= 6;
		if place_meeting(x, y, inst_secretsolid)
		{ inst_secretsolid.x = -999; layer_set_visible(layer_get_id("Tiles_2"), false); }
	}
}
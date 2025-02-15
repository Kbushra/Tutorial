objTutorialDude.atkTimer = 60;

dialogueTimer--;
if dialogueTimer <= 0 { flag++; dialogueTimer = 60; }

if flag >= 2
{
	with (objTutorialDude)
	{
		x += 6;
		sprite_index = sprTutorialR;
		if place_meeting(x, y, inst_secretsolid2)
		{ inst_secretsolid2.x = -999; layer_set_visible(layer_get_id("Tiles_2"), false); }
	}
}
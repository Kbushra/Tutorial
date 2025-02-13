if x < objPlayer.x { destSpr = sprTutorialR; } else { destSpr = sprTutorialL; }
if sprite_index != destSpr { sprite_index = destSpr; }

depth = objPlayer.depth+1;

if global.state > 2
{
	atkTimer--;
	if atkTimer > 0 { exit; }
	
	atkTimer = 60;
	if patience > 0 { instance_create_layer(x+15, y+30, "Instances", objDart); }
	else { instance_create_layer(x+12, y+30, "Instances", objMissile); }
}
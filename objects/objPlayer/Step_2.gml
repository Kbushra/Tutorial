if global.jump { stuck = false; }
if stuck { vMovement = 0; exit; }

if grounded
{	
	if place_free(x, y+2) { y++; }
	if !place_free(x, y+1) { y--; }
}

if !place_free(x+1, y) { x--; }
if !place_free(x-1, y) { x++; }

verticalChecks();

if !visible { exit; }

hMovement = lerp(hMovement, (global.r - global.l)*3, 0.2);
	
if hMovement != 0 && place_free(x+hMovement, y) { x += hMovement; }
else if state != "J" { state = "I"; }
	
if global.jump && grounded { vMovement = -6.5; grounded = false; }

var destSpr = asset_get_index("sprPlayer" + dir + state);
if sprite_index != destSpr { sprite_index = destSpr; }
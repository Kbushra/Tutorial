vMovement += 0.2
vMovement = clamp(vMovement, -10, 10);

if global.state > 0
{
	if !place_free(x-3, y) || !place_free(x+3, y)
	{ vMovement = clamp(vMovement, -3.5, 2); }
}

if grounded { vMovement = 0; }

y += vMovement;
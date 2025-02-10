function verticalChecks()
{
	if vMovement == 0 { grounded = !place_free(x, y+2); return; } //No vertical movement
	if place_free(x, y+vMovement) { grounded = false; return; } //In the air
	if vMovement < 0
	{
		vMovement = 0;
		while !place_free(x, y-2) { y++; }
		return;
	} //Bumped head
	
	//Landing on ground
	while place_free(x, y+2) { y++; }
	grounded = true;
	vMovement = 0;
}

function pauseMovement()
{
	global.jump = false;
	
	global.l = false;
	global.r = false;
	global.u = false;
	//global.d = false;
}

function camFlash(_color, _amount, _hold, _target)
{
	with(instance_create_layer(0, 0, "Effects", objTransition)) {
		
		amount = _amount;
		hold = _hold;
		target = _target;
		image_blend = _color;
	}
}
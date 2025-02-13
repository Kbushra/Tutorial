if state == "D"
{
	pauseMovement();
	deathTimer--;
	if deathTimer <= 0 { game_restart(); }
	
	exit;
}

if global.r - global.l == 1 { dir = "R"; state = "W"; }
else if global.r - global.l == -1 { dir = "L"; state = "W"; }
else { state = "I"; }

if !grounded { state = "J"; }

if global.state > 1 && mouse_check_button_pressed(mb_left) && !instance_exists(objAttack)
{ instance_create_layer(x+15, y+30, "Instances", objAttack); }
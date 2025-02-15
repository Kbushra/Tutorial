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

if global.state > 3
{
	if keyboard_check_pressed(ord("E"))
	{
		switch (global.temp)
		{
			case "": global.temp = "C"; break;
			case "C": global.temp = "H"; break;
			case "H": global.temp = ""; break;
		}
	}
	
	for (var i = 1; i < 6; i++)
	{
		var laymap = layer_tilemap_get_id(layer_get_id($"Tiles_{i}"));
		var tilename = tileset_get_name(tilemap_get_tileset(laymap));
		
		if string_pos("tlCaveBack", tilename) != 0
		{ tilemap_tileset(laymap, asset_get_index($"tlCaveBack{global.temp}")); }
		else { tilemap_tileset(laymap, asset_get_index($"tlCave{global.temp}")); }
	}
}
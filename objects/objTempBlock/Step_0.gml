if place_meeting(x, y, objPlayer) { solid = false; }
else { solid = global.temp == reqTemp; }
visible = solid;

if reqTemp == "H" { sprite_index = sprHotBlock; }
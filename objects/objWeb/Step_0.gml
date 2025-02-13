if place_meeting(x, y, objAttack) { solid = false; }
if !solid { image_alpha -= 0.04; }

if image_alpha <= 0 { instance_destroy(); }
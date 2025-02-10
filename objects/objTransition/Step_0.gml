depth = -9999;

image_xscale = room_width;
image_yscale = room_height;

if fade { image_alpha += amount;  } 
	else { image_alpha -= amount; }

if image_alpha >= 1 { 
	
	hold --;
	if hold <= 0 { fade = false; }
	
	if instance_exists(target) { target.halfMemo = true; }
}

if image_alpha <= 0 && !fade { instance_destroy(); }
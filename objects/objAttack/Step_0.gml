x = lerp(x, targX, 0.1);

image_alpha -= 0.02;
if image_alpha <= 0 { instance_destroy(); }
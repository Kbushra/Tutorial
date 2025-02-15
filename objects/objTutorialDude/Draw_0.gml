draw_self()
hitTimer--;

if hitTimer > 0
{
	draw_set_halign(fa_center);
	
	if patience == 2 { draw_text(x+12, y-20, "OW"); }
	else if patience == 1 { draw_text(x+12, y-20, "HEY"); }
	else if patience == 0 { draw_text(x+12, y-20, "THATS IT"); }
	
	draw_set_halign(fa_left);
}
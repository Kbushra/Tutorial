if objPlayer.dir == "L" { targX = -50; image_xscale = -1; }
else { targX = 50; }

if global.l || global.r { targX *= 2; }
targX += x;
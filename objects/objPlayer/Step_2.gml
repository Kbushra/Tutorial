if global.r - global.l == 1 { dir = "R"; state = "W"; }
else if global.r - global.l == -1 { dir = "L"; state = "W"; }
else { state = "I"; }

if !grounded { state = "J"; }

var destSpr = asset_get_index("sprPlayer" + dir + state);
if sprite_index != destSpr { sprite_index = destSpr; }
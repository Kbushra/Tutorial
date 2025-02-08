if x < objPlayer.x { destSpr = sprTutorialR; } else { destSpr = sprTutorialL; }
if sprite_index != destSpr { sprite_index = destSpr; }

depth = objPlayer.depth+1;
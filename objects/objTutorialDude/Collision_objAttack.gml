if global.state <= 2 { exit; }
if global.state == 3 && patience <= 0 { exit; }
if instance_exists(objCutsceneDefeat) { exit; }

instance_destroy(other);

patience--;
hitTimer = 30;

if global.state == 4 { instance_create_layer(x, y, "Instances", objCutsceneDefeat); }
if global.state <= 2 || patience <= 0 { exit; }
instance_destroy(other);

patience--;
hitTimer = 30;
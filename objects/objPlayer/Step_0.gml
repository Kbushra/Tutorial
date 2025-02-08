vMovement += 0.2;
vMovement = clamp(vMovement, -10, 10);

if grounded { vMovement = 0; }

y += vMovement;
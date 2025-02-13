if place_meeting(x, y, objPlayer) { chatPos = lerp(chatPos, 32, 0.1); }
else { chatPos = lerp(chatPos, -150, 0.1); }

draw_sprite(sprDialogueBox, 0, 96, chatPos);
draw_text(112, chatPos+16, dialogue);

if specialID == 0 && chatPos != -150 && global.state == 0 { global.state = 1; }
if specialID == 1 && chatPos != -150 && global.state == 1 { global.state = 2; }
if (keyboard_check(vk_left)) && (attack < 0) side = -1;
if (keyboard_check(vk_right)) && (attack < 0) side = 1;
if (keyboard_check_pressed(88)){
	attack = 1;
} 
attack = attack -.1
//attack = (keyboard_check_pressed(88));
if (attack > 0) image_xscale = side;else image_xscale = 0;
x = obj_player.x + (18 * side);
y = obj_player.y; 

if (keyboard_check(vk_left)) && (attack < 0) side = -1;
if (keyboard_check(vk_right)) && (attack < 0) side = 1;
if (keyboard_check_pressed(88)){
	attack = 1;
} 
attack = attack -.1
//attack = (keyboard_check_pressed(88));
if (attack > 0) image_xscale = side;else image_xscale = 0;
x = (x,obj_player) + (18 * side);
//y = with(y,obj_player); 
//y = y with(obj_player){y};
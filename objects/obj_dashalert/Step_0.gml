dashable = dashable - .1;
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_dash = keyboard_check_pressed(vk_lalt);
if (key_dash) && (dashable <= 0) && ((key_right - key_left) != 0){
	dash = 15;
	dashable = 4;
}

if (dashable <= 0) image_alpha = 100;else image_alpha = 0;

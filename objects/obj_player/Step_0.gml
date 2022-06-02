/// @desc Core player logic

// get player inputs
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);
key_sprint = keyboard_check(vk_down);
key_dash = keyboard_check_pressed(vk_lalt);

// calculate movement
var _move = (key_right - key_left);

hsp = _move * (walksp)*(sprint);
hsp = hsp + (key_right - key_left)*((dash) + 1)

vsp = vsp + grv;

dashable = dashable - .1;

dash = dash - 1.5;

// sprinting logic
if (key_sprint == true) sprint = 1.75;else sprint = 1;

// dashing logic
if (key_dash) && (dashable <= 0) && ((key_right - key_left) != 0){
	dash = 16.5;
	dashable = 4;
}
if (dash <= 0){
	dash = 0;
}
//if (dash >= 15){
//	dash = 15;
//}
//if (dash > 0) hsp = (key_right - key_left)*(dash);else hsp = _move * (walksp)*(sprint);


if (place_meeting(x,y+1,obj_invisiblewall)) && (key_jump){
	vsp = -jumpsp;
}

// horizintal collision
if (place_meeting(x+hsp,y,obj_invisiblewall)){
	while (!place_meeting(x+sign(hsp),y,obj_invisiblewall)){
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

// vertical collision
if (place_meeting(x,y+vsp,obj_invisiblewall)){
	while (!place_meeting(x,y+sign(vsp),obj_invisiblewall)){
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

// animation
if (!place_meeting(x,y+1,obj_invisiblewall)){
	sprite_index = spr_playerA;
	image_speed = 0;
	if (vsp > 0) image_index = 1;else image_index = 0;
	
}
else {
	image_speed = 1;
	if (hsp == 0){
		sprite_index = spr_player;
	}
	else {
		sprite_index = spr_playerR;
	}
}
if (hsp != 0) image_xscale = sign(hsp);



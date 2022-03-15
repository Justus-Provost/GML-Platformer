/// @desc Core player logic

// get player inputs
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

// calculate movement
var _move = key_right - key_left;

hsp = _move * walksp;

vsp = vsp + grv;

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








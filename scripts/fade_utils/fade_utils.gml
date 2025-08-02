function fade_to_room(fade_room, fade_speed, color = c_black){
    obj_fade.fade_type = OUT;
	obj_fade.fade_room = fade_room;
	obj_fade.fade_speed = fade_speed;
	obj_fade.color = color;
}

function fade_in_room(fade_type, fade_speed, color){
	obj_fade.fade_type = fade_type;
	obj_fade.fade_speed = fade_speed;
	obj_fade.color = color;
}
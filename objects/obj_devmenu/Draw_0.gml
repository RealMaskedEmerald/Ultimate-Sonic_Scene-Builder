	//Real into String
	var select_str = string(room_get_name(select));
	
	//Draw text
	draw_set_halign(fa_center);
	draw_text_transformed(room_width/2, 32, "ROOM SELECT", 3, 3, 0);
	draw_text_transformed(room_width/2, room_height-72, string_upper(select_str), 3, 3, 0);

	//Draw ring
	draw_arrow(room_width / select_max * select, room_height-48-32, room_width / select_max * select, room_height-48, 48);
	
	draw_set_halign(fa_left);

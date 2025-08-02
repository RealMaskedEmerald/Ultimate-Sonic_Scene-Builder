	//Check if surface doesn't exists
	if (!surface_exists(surf))
	{
		surf = surface_create(room_width, room_height);
	}
	
	//Set surface target to this one
	surface_set_target(surf);
	
	//Clear alpha
	draw_clear_alpha(c_black, 0);
	
	//Rectangle
	draw_set_color(color);
	draw_set_alpha(alpha);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	
	//Resets the surface target
	surface_reset_target();
	
	//Draw the surface
	draw_surface(surf, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]));
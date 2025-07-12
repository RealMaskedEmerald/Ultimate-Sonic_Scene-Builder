	if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id))	{
		show_message("His game now unfurls, be prepared, friend.");
		game_end();
	}
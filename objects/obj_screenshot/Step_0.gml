	if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id))	{
		show_message("Ultimate Sonic Scene Builder has crashed. WW91J3JlIGEgbmV3IGZhY2U=");
		audio_stop_all();
		 room_goto(Broken_Intro);
	}
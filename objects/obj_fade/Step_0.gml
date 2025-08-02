	if(fade_type = OUT) {
		alpha += fade_speed/100;
		if(fade_room != undefined) {
			if(alpha = 1) {
				room_goto(fade_room);
				fade_room = undefined;
			}
		}
	}

	if(fade_type = IN) {
		alpha -= fade_speed/100;
		if(fade_room != undefined) {
			if(alpha = 0) {
				room_goto(fade_room);
				fade_room = undefined;
			}
		}
	}
	
	//Limit the alpha
	alpha = clamp(alpha, 0, 1);
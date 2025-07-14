	var key_x = keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left);
	//Move
	select += 1 * key_x;
	
	//Wrap
	if(select > select_max) select = 0;
	if(select < 0) select = select_max;
	
	//Select room
	if(keyboard_check_pressed(vk_space)) room_goto(select);
	//Timer
    timer++;
    
    //Controls
    var key_x = keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left);
    var key_y = keyboard_check_pressed(vk_up) - keyboard_check_pressed(vk_down);
	
    //Move
    if(cat_select = 0)    select += key_x;
    cat_select += key_y;
	
	//Wrap
	if(select > select_max) select = 0;
	if(select < 0) select = select_max;
        
	if(cat_select > array_length(cat)-1) cat_select = 0;
	if(cat_select < 0) cat_select = array_length(cat)-1;
     
	//Select room
	if(keyboard_check_pressed(vk_space) && cat_select = 0) {
        fade_to_room(select, 5, c_black);
    }
    
    //Animation stuff
    offset[0] = offset[0] + sin(timer * 0.05) * 0.08;    
    offset[1] = lerp(offset[1], 0, 0.1);
    rot += 1;
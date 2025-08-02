if (!surface_exists(surf))
{
    surf = surface_create(room_width, room_height);
}

surface_set_target(surf);

draw_clear_alpha(c_black, 0);

#region Drawing text and such
	//Temporary variables
	var select_str = string_upper(room_get_name(select)), wrapt = timer mod (room_width/2+16);
	
    //Draw rectangles
    draw_set_color(c_black);
    draw_rectangle(-1, -1, room_width, 56-offset[1] - offset[0], false);
    draw_rectangle(-1, room_height, room_width, room_height - 56 + offset[1] + offset[0], false);
    
    //Draw outline
    draw_set_color(c_white);
    draw_rectangle(-1, -1, room_width, 56 - offset[1] - offset[0], true);
    draw_rectangle(-1, room_height, room_width, room_height - 56  + offset[1] + offset[0], true);
    
    //Draw categories
	draw_set_halign(fa_center);
    for(var i = 0; i <= array_length(cat)-1; i++;) {
        var i_str = string_upper(cat[i]);
        
        draw_set_color(i = cat_select ?  c_white : #777777);
        draw_text((1+i-cat_select) * room_width/2, 32 - offset[1], i_str);
        draw_set_color(c_white);
    }
    
    //Wrapping text
	draw_set_halign(fa_left);
    for(var j = 0;j < 4; j++;) {
        draw_text(-wrapt+(room_width/2+16)*j, 8-offset[1], string_upper(window_get_caption()));
        draw_text(wrapt-(room_width/2+16)*j+room_width/2, room_height-16+offset[1], string_upper(window_get_caption()));
    }
#endregion

#region Cases for cat_select
    //Setup
    draw_set_halign(fa_center);
    
    //Cases for categories
    switch(cat_select) {
        case 0:
            draw_text(room_width/2, room_height-40+offset[1], select_str);
	        draw_arrow(room_width/select_max * select, room_height-120-offset[0]+offset[1], room_width/select_max * select, room_height-72-offset[0]+offset[1], 32);
        break;
        
        case 1:
            draw_text(room_width/2, room_height-40, "THIS CODE IS ASS NGL");
        break;
        
        case 2:
            if(keyboard_check_pressed(vk_space)) game_end(); 
            draw_text(room_width/2, room_height-40, "PRESS E TO DIE");
        break;
    }
#endregion

surface_reset_target();

draw_surface(surf, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]));
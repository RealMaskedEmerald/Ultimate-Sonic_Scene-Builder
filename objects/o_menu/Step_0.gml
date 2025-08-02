/// @desc Scripts
var up, down, accept, back;

up 		 = keyboard_check_pressed(vk_up) or gamepad_button_check_pressed(0, gp_padu);
down 	 = keyboard_check_pressed(vk_down) or gamepad_button_check_pressed(0, gp_padd);
accept 	 = keyboard_check_pressed(ord("F")) or gamepad_button_check_pressed(0, gp_face1);
back 	 = keyboard_check_pressed(ord("D")) or gamepad_button_check_pressed(0, gp_face2);

if(accept) {
    switch (image_index) {
    	case 0: 
            audio_stop_sound(snd_menu);
    	    fade_to_room(Game, 5);
        break;
        
        case 1:
            fade_to_room(Menu, 5);
        break;
        
        case 2:
            game_end();
        break;
    }
}

//Move
if up image_index--;
if(down) image_index++;

//Modulates image_index cuz fuck ts
image_index %= 3;
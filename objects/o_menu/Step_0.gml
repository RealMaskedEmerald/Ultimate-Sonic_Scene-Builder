/// @desc Scripts
var up, down, accept, back;

up 		 = keyboard_check_pressed(vk_up) or gamepad_button_check_pressed(0, gp_padu);
down 	 = keyboard_check_pressed(vk_down) or gamepad_button_check_pressed(0, gp_padd);
accept 	 = keyboard_check_pressed(ord("F")) or gamepad_button_check_pressed(0, gp_face1);
back 	 = keyboard_check_pressed(ord("D")) or gamepad_button_check_pressed(0, gp_face2);

if(accept) {
	//KILL ME
	room_goto(image_index + 1);
	//room_goto(rm_placeholder);
	
	//End game if highlighting "EXIT"
	if(image_index = 2) game_end();
	
	//Pause music
	audio_pause_sound(snd_menu);
}

//I think you could guess what these do
if up image_index = image_index - 1 mod 3;

if down image_index = image_index + 1 mod 3;
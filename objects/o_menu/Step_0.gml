/// @desc Scripts
var up, down, accept, back;

up 		 = keyboard_check_pressed(vk_up) or gamepad_button_check_pressed(0, gp_padu);
down 	 = keyboard_check_pressed(vk_down) or gamepad_button_check_pressed(0, gp_padd);
accept 	 = keyboard_check_pressed(ord("F")) or gamepad_button_check_pressed(0, gp_face1);
back 	 = keyboard_check_pressed(ord("D")) or gamepad_button_check_pressed(0, gp_face2);

if(accept) {
	room_goto(image_index + 1);
	audio_pause_sound(snd_menu);
}

if up image_index--;

if down image_index++;
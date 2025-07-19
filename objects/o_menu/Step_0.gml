/// @desc Scripts
var up, down, accept, back;

up 		 = keyboard_check_pressed(vk_up) or gamepad_button_check_pressed(0, gp_padu);
down 	 = keyboard_check_pressed(vk_down) or gamepad_button_check_pressed(0, gp_padd);
accept 	 = keyboard_check_pressed(ord("F")) or gamepad_button_check_pressed(0, gp_face1);
back 	 = keyboard_check_pressed(ord("D")) or gamepad_button_check_pressed(0, gp_face2);

if image_index = 0 and accept {
	  audio_stop_sound(snd_menu);
	room_goto(Game)
}
if image_index = 1 and accept {
	room_goto(Menu)
}
if image_index = 2 and accept {
	game_end();
}

//I think you could guess what these do
if up image_index = image_index - 1 mod 3;

if down image_index = image_index + 1 mod 3;
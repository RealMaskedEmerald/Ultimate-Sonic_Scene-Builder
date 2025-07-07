// Left Mouse Button or Pressed Event of obj_music_button

// Stop the currently playing music
audio_stop_sound(current_music_instance);

// Move to the next track in the array, wrapping around if needed
current_track_index = (current_track_index + 1) mod array_length(music_tracks);

// Play the new track and store the instance ID
current_music_instance = audio_play_sound(music_tracks[current_track_index], 1, true);



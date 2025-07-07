
// Array of music tracks
music_tracks = [snd_neo_act1, snd_open_your_heart, snd_knight_of_the_wind,snd_what_u_need,]; // Replace with your actual sound asset names

// Variable to keep track of the current track index
current_track_index = 0;

// Play the first track automatically
current_music_instance = audio_play_sound(music_tracks[current_track_index], 1, true); // Play, prioritize 1, loop
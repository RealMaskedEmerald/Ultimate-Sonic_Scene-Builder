if (video_get_status() != video_status_playing) // Video finished playing
{
    video_pause(); // Close the video
    fade_to_room(target_room, 5)// Go to the next room
}
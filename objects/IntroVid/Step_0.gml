if (video_get_status() == 0) // Video finished playing
{
    video_close(); // Close the video
    room_goto(target_room); // Go to the next room
}
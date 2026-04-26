// Step event
if (timer > 0) {
    timer--; // Countdown
}
// When timer hits 0, start video
if (timer == 0 && !playing_video) {
    video = video_open("SonicBuilderHQwowBroken.mp4");
    video_set_volume(1.0);
    playing_video = true;
    timer = -1; // stop timer logic
}
// Only check video after it starts
if (playing_video) {
    if (video_get_status() == video_status_closed) { 
        // video finished automatically
        fade_to_room(Act_1, 5);
    }
}
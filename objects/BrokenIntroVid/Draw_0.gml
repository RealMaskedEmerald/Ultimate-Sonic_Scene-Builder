var video_data = video_draw();

if (is_array(video_data)) {
    var video_status = video_data[0];
    var surf = video_data[1];
    
    if (video_status == 0 && surface_exists(surf)) {
        var w = surface_get_width(application_surface);
        var h = surface_get_height(application_surface);
        
        draw_surface_stretched(surf, 0, 0, w, h);
    }
}
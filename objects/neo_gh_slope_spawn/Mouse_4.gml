if (position_meeting(mouse_x, mouse_y, id)) // Check if mouse is over the obj_clickable instance
{
    instance_create_layer(x, y, "Building_Draggables", neo_gh_slope_copy); // Spawn obj_spawnable at obj_clickable's location
}
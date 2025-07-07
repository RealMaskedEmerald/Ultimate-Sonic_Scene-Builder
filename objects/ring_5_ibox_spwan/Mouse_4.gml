if (position_meeting(mouse_x, mouse_y, id)) // Check if mouse is over the obj_clickable instance
{
    instance_create_layer(x, y, "Building_Draggables", ring_5_ibox_copy); // Spawn obj_spawnable at obj_clickable's location
}
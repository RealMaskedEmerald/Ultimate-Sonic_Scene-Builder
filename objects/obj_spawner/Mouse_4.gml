if (position_meeting(mouse_x, mouse_y, id)) // Check if mouse is over the obj_clickable instance
{
    var tile = instance_create_layer(x, y, "Building_Draggables", obj_grabables, {sprite_index : sprite_index}); // Spawn obj_grabable at obj_spawner's location
	tile.grab = true;
}
// In obj_player's Left Mouse Click event
if (mouse_check_button_pressed(mb_left)) {
  target_x = mouse_x;
  target_y = y; // For a side-scroller, typically only x changes based on mouse clicks
  speed = 4; // Adjust as needed
  direction = point_direction(x, y, target_x, target_y);
}

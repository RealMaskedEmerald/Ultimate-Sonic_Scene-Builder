// In obj_player's Step event
if (speed > 0) {
  var _dist = point_distance(x, y, targetX, targetY);
  if (_dist <= speed) {
    x = targetX;
    speed = 0;
  }
  else {
    move_towards_point(targetX, targetY, speed);
  }
}

if (mouse_check_button_pressed(mb_left)) {
  targetX = mouse_x;
  targetY = y; // For a side-scroller, typically only x changes based on mouse clicks
  speed = 4; // Adjust as needed
  direction = point_direction(x, y, targetX, targetY);
}

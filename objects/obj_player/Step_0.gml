// In obj_player's Step event
if (speed > 0) {
  var _dist = point_distance(x, y, target_x, target_y);
  if (_dist <= speed) {
    x = target_x;
    speed = 0;
  } else {
    move_towards_point(target_x, target_y, speed);
  }
}

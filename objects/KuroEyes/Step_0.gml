//eyes staring
timer--;

if (timer <= 1) {
    // Fade out or change to a different sprite
    sprite_index = kuro_eyes;
}

if (timer <= 0) {
    instance_destroy();
}

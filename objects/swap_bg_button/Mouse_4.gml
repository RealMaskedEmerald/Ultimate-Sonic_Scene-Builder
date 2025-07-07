if (instance_exists(swappable_backgroundss))
{
swappable_backgroundss.image_index += 1;
}

if (swappable_backgroundss.image_index >= sprite_get_number(swappable_backgroundss.sprite_index))
{
    swappable_backgroundss.image_index = 0;
}
// scr_create_cupid_arrow_miss(angle)
//
// Creates an impacted arrow that sticks to a person

var bow = instance_find(obj_cupid_bow, 0);

with (instance_create(mouse_x, mouse_y, obj_cupid_arrow_impact))
{
    depth = room_height - mouse_y;
    image_angle = argument0;
}

with (instance_create(mouse_x, mouse_y, obj_cupid_arrow_streak))
{
    depth = room_height - mouse_y + 0.5;
    image_angle = argument0 + 180;
    image_yscale = point_distance(mouse_x, mouse_y, bow.x, bow.y) / sprite_height;
}

audio_play_sound(snd_arrow, 1, false);


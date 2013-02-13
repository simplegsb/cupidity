// scr_create_cupid_arrow_hit(angle, person)
//
// Creates an impacted arrow that sticks to a person

var bow = instance_find(obj_cupid_bow, 0);
var destination_x = argument1.x;
var destination_y = argument1.y - CUPID_ARROW_IMPACT_OFFSET;

argument1.shot = true;

with (instance_create(destination_x, destination_y, obj_cupid_arrow_impact))
{
    image_angle = argument0;
    argument1.arrow = id;
    person = argument1.id;
}

with (instance_create(destination_x, destination_y, obj_cupid_arrow_streak))
{
    depth = room_height - destination_y + 0.5;
    image_angle = argument0 + 180;
    image_yscale = point_distance(destination_x, destination_y, bow.x, bow.y) / sprite_height;
}

ds_list_add(global.lovers, argument1.id);
effect_create_above(ef_explosion, destination_x, destination_y, 0.5, c_red);

audio_play_sound(snd_arrow, 1, false);


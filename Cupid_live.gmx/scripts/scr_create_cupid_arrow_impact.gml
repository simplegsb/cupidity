// scr_create_cupid_arrow_impact(angle, person)
//
// Creates an impacted arrow that sticks to a person

var destination_x = argument1.x;
var destination_y = argument1.y - CUPID_ARROW_IMPACT_OFFSET;

with (instance_create(destination_x, destination_y, obj_cupid_arrow_impact))
{
    image_angle = argument0;
    argument1.arrow = id;
    person = argument1.id;
}

instance_create(destination_x, destination_y, obj_cupid_arrow_streak);

effect_create_above(ef_explosion, destination_x, destination_y, 0.5, c_red);


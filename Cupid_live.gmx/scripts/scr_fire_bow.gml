// scr_fire_bow()
//
// Fires the bow at the person under the mouse.

var person = instance_position(mouse_x, mouse_y, obj_person);
if (!person)
{
    if (mouse_y > 490)
    {
        scr_create_cupid_arrow_miss(instance_find(obj_cupid_bow, 0).image_angle);
    }

    if (global.to_be_matched != 0)
    {
        if (global.to_be_matched.arrow != 0)
        {
            ds_list_delete(global.lovers, ds_list_find_index(global.lovers, global.to_be_matched));
            with (global.to_be_matched.arrow)
            {
                instance_destroy();
            }
        }
    }

    return 0;
}

// Shoot the first person
if (global.firing_first)
{
    global.to_be_matched = person;
    scr_create_cupid_arrow_hit(instance_find(obj_cupid_bow, 0).image_angle, person);
}
// The second person cannot be the same as the first person!
else if (global.to_be_matched == person)
{
    ds_list_delete(global.lovers, ds_list_find_index(global.lovers, global.to_be_matched));
    with (person.arrow)
    {
        instance_destroy();
    }
}
// Shoot the second person
else if (global.to_be_matched != 0)
{
    global.to_be_matched.match = person;
    person.match = global.to_be_matched;
    global.to_be_matched = 0;
    scr_create_cupid_arrow_hit(instance_find(obj_cupid_bow, 0).image_angle, person);

    var meeting_place_x = min(person.x, person.match.x) + (abs(person.x - person.match.x) / 2.0);
    var meeting_place_y = min(person.y, person.match.y) + (abs(person.y - person.match.y) / 2.0);

    with (person)
    {
        shot = false;
        path_end();
        move_towards_point(meeting_place_x, meeting_place_y, 5);
    }

    with (person.match)
    {
        shot = false;
        path_end();
        move_towards_point(meeting_place_x, meeting_place_y, 5);
    }
}


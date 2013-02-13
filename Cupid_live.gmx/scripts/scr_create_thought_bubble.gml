// scr_create_thought_bubble(person)
//
// Creates a thought bubble.

with (instance_create(argument0.x, argument0.y - THOUGHT_BUBBLE_OFFSET, obj_thought_bubble))
{
    person = argument0.id;
    if (person.interest == BATTLEAXES)
    {
        sprite_index = spr_interest_battleaxes;
    }
    else if (person.interest == BEER)
    {
        sprite_index = spr_interest_beer;
    }
    else if (person.interest == BOARDGAMES)
    {
        sprite_index = spr_interest_boardgames;
    }
    else if (person.interest == CARS)
    {
        sprite_index = spr_interest_cars;
    }
    else if (person.interest == CATS)
    {
        sprite_index = spr_interest_cats;
    }
    else if (person.interest == COFFEE)
    {
        sprite_index = spr_interest_coffee;
    }
    else if (person.interest == DIAMONDS)
    {
        sprite_index = spr_interest_diamonds;
    }
    else if (person.interest == ICECREAM)
    {
        sprite_index = spr_interest_icecream;
    }
    else if (person.interest == MOVIES)
    {
        sprite_index = spr_interest_movies;
    }
    else if (person.interest == MUSIC)
    {
        sprite_index = spr_interest_music;
    }
    else if (person.interest == SEX)
    {
        sprite_index = spr_interest_sex;
    }
    else if (person.interest == SHOES)
    {
        sprite_index = spr_interest_shoes;
    }
    else if (person.interest == VIDEOGAMES)
    {
        sprite_index = spr_interest_videogames;
    }
}


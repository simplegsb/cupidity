// scr_match(person1, person2)
//
// Completes a match

if (argument0.match != 0 &&
    argument0.match == argument1.id)
{
    global.last_match_debug_info = "Match: ";
    global.total_matches++;

    var match_score = 10;
    if (argument0.interest == argument1.interest)
    {
        match_score += 10;
        global.last_match_debug_info += " Interests!";
    }
    if (argument0.colour == argument1.colour)
    {
        match_score += 5;
        global.last_match_debug_info += " Color!";
    }
    if (argument0.type == argument1.type)
    {
        match_score += 2;
        global.last_match_debug_info += " Type!";
    }

    var perfect = false;
    if (argument0.colour == argument1.colour &&
        argument0.interest == argument1.interest &&
        argument0.type == argument1.type)
    {
        perfect = true;
        global.perfect_matches++;
    }
    if (argument0.sex == argument1.sex)
    {
        global.same_sex_matches++;
    }
    if ((argument0.type == YETI && argument1.type != YETI) ||
        (argument0.type != YETI && argument1.type == YETI))
    {
        global.inter_species_matches++;
    }

    global.persons_matched += 2;
    score += match_score;

    if (perfect)
    {
        scr_emit_confetti(argument0.x, argument0.y - 100);
        scr_emit_confetti(argument1.x, argument1.y - 100);
    }

    scr_emit_hearts(argument0.x, argument0.y - 100);
    scr_emit_hearts(argument1.x, argument1.y - 100);

    argument0.match = 0;
    argument1.match = 0;
}


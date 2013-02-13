// scr_emit_confetti(x, y)
//
// Emits confetti particles

var emitter = instance_find(obj_particle_confetti_emitter, 0);

// Creates Confetti
repeat(3)
{
    part_particles_create(emitter.confsystem, argument0 - 24 + random(48), argument1 - 16 + random(32), emitter.confpart, 1); 
}

// Creates Sparks
repeat(4)
{
    effect_create_above(ef_spark, argument0 - 32 + random(64), argument1 - 32 + random(64), 1, c_white);
}


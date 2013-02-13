// scr_emit_hearts(x, y)
//
// Emits heart particles

var emitter = instance_find(obj_particle_heart_emitter, 0);

// Creates Love Hearts
repeat(3)
{
    part_particles_create(emitter.heartsystem, argument0 - 24 + random(48), argument1 - 16 + random(32), emitter.heartpart, 1); 
}


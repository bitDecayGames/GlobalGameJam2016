if (hasControl){
    // First jump
    if (place_meeting(x, y+1, obj_physicsBlock)){
        jumping = true;
        audio_play_sound(choose(snd_jump_1, snd_jump_2), 10, false);
        physics_apply_impulse(x, y, 0, jumpForce);
        
        src_increment(controlNum, global.NUM_TIMES_JUMPED, 1);
    }
} else {
    // COULD break them out of the dance here... maybe
}

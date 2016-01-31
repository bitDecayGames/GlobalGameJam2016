if (hasControl){
    // First jump
    if (place_meeting(x, y+1, obj_physicsBlock)){
        jumping = true;
        physics_apply_impulse(x, y, 0, jumpForce);
    }
} else {
    // COULD break them out of the dance here... maybe
}

if is_undefined(controlNum) {
    return 0
}

//DPad check    
if gamepad_button_check_pressed(controlNum, gp_padu) {
    // First jump
    if (place_meeting(x, y+1, obj_physicsBlock)){
        jumping = true;
        physics_apply_impulse(x, y, 0, jumpForce);
        show_debug_message("Jump");
    }
}
if gamepad_button_check_pressed(controlNum, gp_padd) {
    show_debug_message("A button pressed")
}
if gamepad_button_check(controlNum, gp_padl) {
    physics_apply_force(x, y, -moveSpeed, -20)
    image_xscale = -1
    isFacingLeft = true
}
if gamepad_button_check(controlNum, gp_padr) {
    physics_apply_force(x, y, moveSpeed, -20)
    image_xscale = 1
    isFacingLeft = false
}

// Button check
if gamepad_button_check_pressed(controlNum, gp_face1) {
    show_debug_message("A button pressed")
    // First jump
    if (place_meeting(x, y+1, obj_physicsBlock)){
        jumping = true;
        physics_apply_impulse(x, y, 0, jumpForce);
    }
}
if gamepad_button_check_pressed(controlNum, gp_face2) {
    show_debug_message("B button pressed")
}
if gamepad_button_check_pressed(controlNum, gp_face3) {
    if (!isThrowing){
        var inst;
        inst = instance_create(x, y, obj_knifeSafe);
        with(inst){
            if (other.isFacingLeft){
                physics_apply_impulse(x, y-4, -other.knifeSpeed, -1.2)
                image_xscale = -1
            } else {
                physics_apply_impulse(x, y-4, other.knifeSpeed, -1.2)
            }
        }
        if (other.isFacingLeft) sprite_index = playerLeftThrow
        else sprite_index = playerRightThrow
        
        isThrowing = true
        image_speed = 0.1
    }
    show_debug_message("X button pressed")
}
if gamepad_button_check_pressed(controlNum, gp_face4) {
    show_debug_message("Y button pressed")
}


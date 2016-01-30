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
    
    isFacingLeft = true
}
if gamepad_button_check(controlNum, gp_padr) {
    physics_apply_force(x, y, moveSpeed, -20)
    
    isFacingLeft = false
}

// Button check
if gamepad_button_check_pressed(controlNum, gp_face1) {
    show_debug_message("A button pressed")
    // First jump
    if (place_meeting(x, y+1, obj_physicsBlock)){
        jumping = true;
        physics_apply_impulse(x, y, 0, jumpForce);
        show_debug_message("Jump");
    }
}
if gamepad_button_check_pressed(controlNum, gp_face2) {
    show_debug_message("B button pressed")
}
if gamepad_button_check_pressed(controlNum, gp_face3) {
    var inst;
    inst = instance_create(x, y, obj_knifeSafe);
    with (inst) {
        var knifeSpeed = 2
        if (other.isFacingLeft) knifeSpeed *= -1 
        physics_apply_impulse(x, y+1, knifeSpeed, -2)
    }
    show_debug_message("X button pressed")
}
if gamepad_button_check_pressed(controlNum, gp_face4) {
    show_debug_message("Y button pressed")
}


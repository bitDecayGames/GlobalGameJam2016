if is_undefined(controlNum) {
    return 0
}

var threshold = 0

var verticalModifier = 0
var amplification = 1.5

//DPad check
if gamepad_button_check(controlNum, gp_padu) {
    verticalModifier = amplification
} else if (gamepad_axis_value(controlNum, gp_axislv) < -threshold) {
    verticalModifier = amplification * -gamepad_axis_value(controlNum, gp_axislv)
}

if gamepad_button_check(controlNum, gp_padd) {
    verticalModifier = -amplification 
} else if (gamepad_axis_value(controlNum, gp_axislv) > threshold) {
    verticalModifier = amplification * -gamepad_axis_value(controlNum, gp_axislv)
}

if gamepad_button_check(controlNum, gp_padl) {
    src_move(true)
} else if (gamepad_axis_value(controlNum, gp_axislh) < -threshold) {
    src_move(true)
} else if keyboard_check(vk_left) {
    src_move(true)
}

if gamepad_button_check(controlNum, gp_padr) {
    src_move(false)
} else if (gamepad_axis_value(controlNum, gp_axislh) > threshold) {
    src_move(false)
} else if (keyboard_check(vk_right)) {
    src_move(false)
}

// Button check
if gamepad_button_check_pressed(controlNum, gp_face1) {
    show_debug_message("A button pressed")
    src_jump()
} else if (keyboard_check_pressed(vk_up)) {
    verticalModifier = 1
    src_jump()
} else if (keyboard_check_pressed(vk_down)){
    verticalModifier = -1
}
if gamepad_button_check_pressed(controlNum, gp_face2) {
    show_debug_message("B button pressed")
}
if gamepad_button_check_pressed(controlNum, gp_face3) {
    src_throw(verticalModifier)
    show_debug_message("X button pressed")
} else if (keyboard_check_pressed(vk_space)){
    src_throw(verticalModifier)
}
if gamepad_button_check_pressed(controlNum, gp_face4) {
    show_debug_message("Y button pressed")
}


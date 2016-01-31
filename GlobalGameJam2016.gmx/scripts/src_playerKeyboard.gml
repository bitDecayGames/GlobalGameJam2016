var verticalModifier = 0

if keyboard_check(vk_left) {
    src_move(true)
}
if (keyboard_check(vk_right)) {
    src_move(false)
}
if (keyboard_check_pressed(vk_up)) {
    verticalModifier = 1
    src_jump()
} else if (keyboard_check_pressed(vk_down)){
    verticalModifier = -1
}
if (keyboard_check_pressed(vk_space)){
    src_throw(verticalModifier)
}


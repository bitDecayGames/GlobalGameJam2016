left = argument0
if (left) {
    physics_apply_force(x, y, -moveSpeed, -20)
    image_xscale = -1
    isFacingLeft = true
} else {
    physics_apply_force(x, y, moveSpeed, -20)
    image_xscale = 1
    isFacingLeft = false
}

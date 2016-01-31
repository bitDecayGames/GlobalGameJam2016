var modifier = argument0

if (!isThrowing){
    var inst;
    inst = instance_create(x, y, obj_knifeSafe);
    
    with(inst){
        if (other.isFacingLeft){
            physics_apply_impulse(x, y-4, -other.knifeSpeed, -1.2 - modifier)
            image_xscale = -1
        } else {
            physics_apply_impulse(x, y-4, other.knifeSpeed, -1.2 - modifier)
        }
    }
    if (other.isFacingLeft) sprite_index = playerLeftThrow
    else sprite_index = playerRightThrow
    
    isThrowing = true
    image_speed = 0.1
}

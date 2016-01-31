var modifier = argument0
if (hasControl){
    if (!isThrowing){
        var inst;
        inst = instance_create(x, y, obj_knifeSafe);
        
        // Set the player that created the knife.
        inst.playerNum = controlNum;

        with(inst){
            if (other.isFacingLeft){
                physics_apply_impulse(x, y-4, -other.knifeSpeed, -1.2 - modifier);
                image_xscale = -1;
            } else {
                physics_apply_impulse(x, y-4, other.knifeSpeed, -1.2 - modifier);
            }
        }
        if (other.isFacingLeft) sprite_index = playerLeftThrow;
        else sprite_index = playerRightThrow;

        isThrowing = true;
        image_speed = 0.1;

        // Increment knife counter.
        src_increment(controlNum, global.NUM_KNIVES_THROWN, 1);
    }
} else {
    src_dance(1);
}

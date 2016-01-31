phy_speed_x = max(min(phy_speed_x, max_xspeed), -max_xspeed)

if (!isThrowing && dancing == -1){
    if (phy_speed_y > 0.3){
        sprite_index = playerJumpDown
        image_speed = 3 
    } else if (phy_speed_y < -0.3){
        sprite_index = playerJumpUp
        image_speed = 3 
    } else if (!place_meeting(x, y+1, obj_physicsBlock)){
        sprite_index = playerJumpApex
        image_speed = 1     
    } else {
        if (phy_speed_x > 0.1 || phy_speed_x < -0.1){
            sprite_index = playerRun
            image_speed = phy_speed_x / 20
        } else {
            sprite_index = playerStand
            image_speed = 0.1
        }
    }
    
}

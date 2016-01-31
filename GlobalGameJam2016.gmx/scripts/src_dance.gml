show_debug_message("Dance mother fucker!");
if (dancing == -1){
    dancing = argument0;
    var dancingTime = 2;
    switch (dancing){
        case 1:
        show_debug_message("dance: 1");
        sprite_index = playerDanceTwerk
        image_speed = 0.2;
        alarm[3] = room_speed * dancingTime;
        break;
        case 2:
        show_debug_message("dance: 2");
        sprite_index = playerDanceThriller
        image_speed = 0.1;
        alarm[3] = room_speed * dancingTime;
        break;
        case 3:
        show_debug_message("dance: 3");
        sprite_index = playerDanceWorm
        image_speed = 0.2;
        alarm[3] = room_speed * dancingTime;
        break;
    }
} else if (argument0 == -1){
    dancing = -1
    sprite_index = playerStand
}

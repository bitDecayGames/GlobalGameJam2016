show_debug_message("Event = " + async_load[? "event_type"]);        // Debug cocde so you can see which event has been
show_debug_message("Pad = " + string(async_load[? "pad_index"]));   // triggered and the pad associated with it.

switch(async_load[? "event_type"])             // Parse the async_load map to see which event has been triggered
{
case "gamepad discovered":                     // A game pad has been discovered
    var pad = async_load[? "pad_index"];       // Get the pad index value from the async_load map
    gamepad_set_axis_deadzone(pad, 0.5);       // Set the "deadzone" for the axis
    gamepad_set_button_threshold(pad, 0.1);    // Set the "threshold" for the triggers
    global.availablePads[? pad] = true         // Flag the pad as being available now
    global.claimedPads[? pad] = false          // Flag the pad as not yet claimed
    for(i = 0; i < instance_number(obj_spawnPoint); i += 1) {
        spawnPoint = instance_find(obj_spawnPoint, i)
        if (spawnPoint.spawnControlPad == undefined) {
        show_debug_message("assinging controller to spawn")
            spawnPoint.spawnControlPad = pad
            global.claimedPads[pad] = true
            break
        }
    }
    break
case "gamepad lost":                           // Gamepad has been removed or otherwise disabled
    var pad = async_load[? "pad_index"];       // Get the pad index
     global.availablePads[? pad] = false       // Flag the pad as not being available
    
    for(i = 0; i < instance_number(obj_spawnPoint); i += 1) {
        spawnPoint = instance_find(obj_spawnPoint, i)
        if (spawnPoint.spawnControlPad == pad) {
        show_debug_message("remove controller from spawn")
            spawnPoint.spawnControlPad = undefined
             global.claimedPads[pad] = false
            break
        }
    }
    break;
}


var spawnX = x
var spawnY = y

show_debug_message("Creating player for controller pad")
if (spawnControlPad == undefined) {
    show_debug_message("spawnControlPad is undefined")
    return 1
} else {
    show_debug_message(spawnControlPad)
}
newPlayer = instance_create(spawnX, spawnY, obj_player)
newPlayer.controlNum = spawnControlPad

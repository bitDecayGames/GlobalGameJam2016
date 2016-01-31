var spawnX = x
var spawnY = y

show_debug_message("Creating player for controller pad")
if (spawnControlPad == undefined) {
    show_debug_message("spawnControlPad is undefined")
    return 1
} else {
    show_debug_message(spawnControlPad)
}



switch (spawnControlPad) {
    case 0:
    newPlayer = instance_create(spawnX, spawnY, obj_player_0)
    break
    case 1:
    newPlayer = instance_create(spawnX, spawnY, obj_player_1)
    break
    case 2:
    newPlayer = instance_create(spawnX, spawnY, obj_player_2)
    break
    case 3:
    newPlayer = instance_create(spawnX, spawnY, obj_player_3)
    break
}

newPlayer.spawner = self.id
newPlayer.controlNum = spawnControlPad

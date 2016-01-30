///START SERVER

//Setup server, on success start game, on failure end the game.
if (htme_serverStart(6510, 32)) {
    room_goto(rm_physicsTest);
} else {
    show_message("Could not start server! Check your network configuration!");
    game_end();
}

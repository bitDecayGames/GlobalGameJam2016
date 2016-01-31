///Check if client is connected
if (htme_clientIsConnected()) {
    room_goto(rm_physicsTest);
}
if (htme_clientConnectionFailed()) {
    show_message("Connection with server failed!");
    game_restart();
}

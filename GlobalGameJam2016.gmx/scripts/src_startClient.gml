///CONECT TO A SERVER

//Ask player for ip
var ip = get_string("To which server should we connect?","127.0.0.1");

//Setup client, on success go to waiting room, otherwise end game
if (htme_clientStart(ip, 6510)) {
    room_goto(rm_connecting); //NOTE THAT WE ARE GOING TO ANOTHER ROOM HERE THAN THE SERVER ABOVE
} else {
    show_message("Could not start client! Check your network configuration!");
    game_end();
}

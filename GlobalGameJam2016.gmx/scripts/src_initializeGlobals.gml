show_debug_message("initializing global availablePads map");
global.availablePads = ds_map_create();
global.claimedPads = ds_map_create();

//window_set_size(800, 800)
room_goto_next();

// Constants for player data.
global.GET = "get";
global.SET = "set";
global.INCREMENT = "increment";

// Number of knives thrown.
global.NUM_KNIVES_THROWN = "numKnivesThrown";

// Player data for 4 players.
var numPlayers = 4;
var i;
for (i = 0; i < numPlayers; i += 1) {
    global.playerData[i] = ds_map_create();
    // Set default values.
    src_set(i, global.NUM_KNIVES_THROWN, 0);
}

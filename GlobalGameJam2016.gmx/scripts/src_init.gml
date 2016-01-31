// Number of players.
global.NUM_PLAYERS = 4;

// Constants for player data.
global.GET = "get";
global.SET = "set";
global.INCREMENT = "increment";

// Number of knives thrown.
global.NUM_KNIVES_THROWN = "numKnivesThrown";
// Number of times danced.
global.NUM_TIMES_DANCED = "numTimesDanced";
// Number of other players killed.
global.NUM_PLAYERS_KILLED = "numPlayersKilled";
// Number of times jumped.
global.NUM_TIMES_JUMPED = "numTimesJumped";

var i;
for (i = 0; i < global.NUM_PLAYERS; i += 1) {
    global.playerData[i] = ds_map_create();
}
src_reset()

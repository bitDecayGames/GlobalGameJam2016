show_debug_message("initializing global availablePads map");
global.availablePads = ds_map_create();
global.claimedPads = ds_map_create();
global.gameOver = false;

//window_set_size(800, 800)
room_goto_next();

src_init();

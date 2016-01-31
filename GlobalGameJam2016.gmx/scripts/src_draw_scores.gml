var ROW_INCREMENT = 175;
var COLUMN_INCRMENT = 200;
var ROW_OFFSET = 100;
var COLUMN_OFFSET = 450;

// i = row on screen.
var i;
for (i = 0; i < global.NUM_PLAYERS; i += 1) {

    // Row position.
    var rowY = i * ROW_INCREMENT + ROW_OFFSET;  
    
    var thrown = src_get(i, global.NUM_KNIVES_THROWN);
    if thrown < 1 {
        thrown = 1;
    }
    var hit = src_get(i, global.NUM_PLAYERS_KILLED);
    scoreData[0] = "Accuracy: " + string(hit/thrown*100) + "%";
    
    scoreData[1] = "Dances: " + string(src_get(i, global.NUM_TIMES_DANCED))
    
    var j;
    for (j = 0; j < array_length_1d(scoreData); j += 1) {
        var rowX = j * COLUMN_INCRMENT + COLUMN_OFFSET;
        
        draw_set_colour(c_white);
        draw_text_transformed(rowX, rowY, scoreData[j], 1.5, 1.5, 0);
    }
}

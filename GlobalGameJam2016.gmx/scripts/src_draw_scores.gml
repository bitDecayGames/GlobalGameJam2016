var ROW_INCREMENT = 100;
var COLUMN_INCRMENT = 100;
var ROW_OFFSET = 25;
var COLUMN_OFFSET = 25;

// i = row on screen.
var i;
for (i = 0; i < global.NUM_PLAYERS; i += 1) {

    // Row position.
    var rowY = i * ROW_INCREMENT + ROW_OFFSET;

    // Create scores to display.
    scoreData[0] = "Player " + string(i);
    
    var j;
    for (j = 0; j < array_length_1d(scoreData); j += 1) {
        var rowX = j * COLUMN_INCRMENT + COLUMN_OFFSET;
        draw_text(rowX, rowY, scoreData[j]);
    }
}

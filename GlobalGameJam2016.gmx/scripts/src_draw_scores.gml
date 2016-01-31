var ROW_INCREMENT = 100;
var COLUMN_INCRMENT = 150;
var ROW_OFFSET = 25;
var COLUMN_OFFSET = 50;

// i = row on screen.
var i;
for (i = 0; i < global.NUM_PLAYERS; i += 1) {

    // Row position.
    var rowY = i * ROW_INCREMENT + ROW_OFFSET;

    // Create scores to display.
    scoreData[0] = "Player " + string(i+1);
    
    
    var thrown = src_get(i, global.NUM_KNIVES_THROWN);
    if thrown < 1 {
        thrown = 1;
    }
    var hit = src_get(i, global.NUM_PLAYERS_KILLED);
    scoreData[1] = "Accuracy: " + string(hit/thrown*100) + "%";
    
    scoreData[2] = "Dances: " + string(src_get(i, global.NUM_TIMES_DANCED))
    
    var j;
    for (j = 0; j < array_length_1d(scoreData); j += 1) {
        var rowX = j * COLUMN_INCRMENT + COLUMN_OFFSET;
        if (j == 0) {
            var standSprite = spr_playerStand_0
            switch (i) {
                case 0:
                    standSprite = spr_playerStand_0
                    break
                case 1:
                    standSprite = spr_playerStand_1
                    break
                case 2:
                    standSprite = spr_playerStand_2
                    break
                case 3:
                    standSprite = spr_playerStand_3
                    break
            }
            draw_sprite(standSprite, 0, rowX, rowY)
        } else {
            draw_text(rowX, rowY, scoreData[j]);
        }
    }
}

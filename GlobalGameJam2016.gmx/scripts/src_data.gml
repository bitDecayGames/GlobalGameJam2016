/** Params: [player #, key, operation, value]
* Value must be primitive.
* 
* Supported operations:
* - get
* - set
* - increment
* 
* Returns: Varies by operation.
*/

var TAG = "src_data";
src_log(TAG + ": Enter");

// src_log("Arguments: " + json_encode(argument));

var returnVal = undefined;
// TODO Fix
//var playerNum = argument[0];
var playerNum = 0;
var key = argument[1];
var op = argument[2];
var value = argument[3];

src_log("Player: " + string(playerNum));
src_log("Key: " + key);
src_log("Op: " + op);
src_log("Value: " + string(value));
src_log("Starting Data: " + json_encode(global.playerData[playerNum]));

// Perfrom op
var playerMap = global.playerData[playerNum];
switch (op) {
    case global.GET:
        returnVal = playerMap[? key];
        break;
    case global.SET:
        playerMap[? key] = value;
        global.playerData[playerNum] = playerMap;
        break;
    case global.INCREMENT:
        var mapValue = playerMap[? key];
        mapValue += value;
        playerMap[? key] = mapValue;
        returnValue = mapValue;
        global.playerData[playerNum] = playerMap;
        break;
    default:
        // Blow up, do nothing?
}

src_log("Ending Data: " + json_encode(global.playerData[playerNum]));
src_log("Return Value: " + string(returnVal));

src_log(TAG + ": Exit");

return returnVal;
 

// scr_EnemyPath(rangeArray, pathArray) outputs a modified rangeArray whose tiles have a weight of 1 if Player was recently in them

// rangeArray is a 13-element 2D-array: [0,0] = x coordinate of the tile 2 North of Enemy
//                                      [0,1] = y coordinate of the tile 2 North of Enemy
/* See Diagram:
| x | x |0 | x | x |
| x | 1 |2 | 3 | x |
| 4 | 5 |6 | 7 | 8 |
| x | 9 |10|11 | x |
| x | x |12| x | x |
*/

// pathArray is a 2D-array: [0,0] = x coordinate of Player's starting location last turn
//                          [0,1] = y coordinate corresponding to above

//                          [1,0] = x coordinate of the next node the Player entered last turn
//                          [1,1] = y coordinate corresponding to above

// compare each node in Player's path last turn (pathArray) to each node in enemy's range (rangeArray)
// if any of them are the same, add 1 to the weight of the enemy's range tile

var weightCounter = 1;

// for each point in Player's last path
for (var pathIndex = 0; pathIndex < array_height_2d(argument1); pathIndex++) {
    // for each tile within Enemy's range
    for (var rangeIndex = 0; rangeIndex < array_height_2d(argument0); rangeIndex++) {
        // if the Player's path point is equal to a tile in the Enemy's range, add a weight to that tile
        if (argument1[pathIndex, 0]) == argument0[rangeIndex, 0] && argument1[pathIndex, 1] == argument0[rangeIndex, 1] {
            argument0[rangeIndex, 2] = weightCounter;
            weightCounter += 1;
            break;
        }
        else {
            if (argument0[rangeIndex, 2] > 0) {
            
            }
            else {
                argument0[rangeIndex, 2] = 0;
            }
        }
    }
}
return argument0;

// scr_mp_grid_free(obj_PathController.mpGrid, x, y);

// scr_Weighted_Move(weightArray) outputs an array [x, y] which is the next movement location of the object

/*

| x | x |0 | x | x |
| x | 1 |2 | 3 | x |
| 4 | 5 |6 | 7 | 8 |
| x | 9 |10|11 | x |
| x | x |12| x | x |

*/

var bestInc = 0; // loop incrementer for bestCoord
bestCoord = 0; // if Enemy has tiles with non-zero weights, bestCoord becomes an array
eRange = array_height_2d(argument0);

// if any coordinates in Enemy's range has weight greater than 0 (neutral), add them to a new array bestCoord 
for (var i = 0; i < eRange; i++) {
    if (argument0[i, 2] > 0) {
        bestCoord[bestInc, 0] = argument0[i, 0];
        bestCoord[bestInc, 1] = argument0[i, 1];
        bestCoord[bestInc, 2] = argument0[i, 2];
        bestInc += 1;
    }
}

sortedCoord = ds_grid_create(1, 3); // 2-D grid to hold bestCoord tiles in descending weighted order
                                    // Size is 1x3 because the smallest non-empty grid will contain one element:
                                    // a tile with x coordinate, y coordinate, and weight

// if bestCoord is an array, sort bestCoord by weight into sortedCoord
// bestCoord is an integer 0, not an array, if all tiles within Enemy's range have weight 0
if (is_array(bestCoord)) {
    bRange = array_height_2d(bestCoord);
    ds_grid_resize(sortedCoord, bRange, 3); // resize the DS_Grid with W=bRange, H=3
    
    // loop through all the elements in bestCoord
    for (var j = 0; j < bRange; j++) {
        
        // the highest weight in bestCoord will be equal to the size of bestCoord: add it to sortedCoord first
        if (bestCoord[j, 2] == bRange) {
            ds_grid_set(sortedCoord, 0, 0, bestCoord[j, 0]);
            ds_grid_set(sortedCoord, 0, 1, bestCoord[j, 1]);
            ds_grid_set(sortedCoord, 0, 2, bestCoord[j, 2]);
        }
        // the remaining elements in bestCoord will continue to have 1 less weight than the previous element
        else if (bestCoord[j, 2] == bRange - 1) {
            ds_grid_set(sortedCoord, 1, 0, bestCoord[j, 0]);
            ds_grid_set(sortedCoord, 1, 1, bestCoord[j, 1]);
            ds_grid_set(sortedCoord, 1, 2, bestCoord[j, 2]);
        }
        else if (bestCoord[j, 2] == bRange - 2) {
            ds_grid_set(sortedCoord, 2, 0, bestCoord[j, 0]);
            ds_grid_set(sortedCoord, 2, 1, bestCoord[j, 1]);
            ds_grid_set(sortedCoord, 2, 2, bestCoord[j, 2]);
        }
        else if (bestCoord[j, 2] == bRange - 3) {
            ds_grid_set(sortedCoord, 3, 0, bestCoord[j, 0]);
            ds_grid_set(sortedCoord, 3, 1, bestCoord[j, 1]);
            ds_grid_set(sortedCoord, 3, 2, bestCoord[j, 2]);
        }
        // we are only concerned with a maximum movement of 5 tiles at the moment (may change if Player's movement increases)
        else if (bestCoord[j, 2] == bRange - 4) {
            ds_grid_set(sortedCoord, 4, 0, bestCoord[j, 0]);
            ds_grid_set(sortedCoord, 4, 1, bestCoord[j, 1]);
            ds_grid_set(sortedCoord, 4, 2, bestCoord[j, 2]);
        }
    }
    // return the first FREE coordinate in sortedCoord (has the highest possible weight that Enemy can move to)
    for (var k = 0; k < bRange; k++) {
        if ((scr_mp_grid_free(obj_PathController.mpGrid, (ds_grid_get(sortedCoord, k, 0)+2)*32, (ds_grid_get(sortedCoord, k, 1)+2)*32)) == 1) {
            target[0] = ds_grid_get(sortedCoord, k, 0);
            target[1] = ds_grid_get(sortedCoord, k, 1);
            return target;
            break;
        }
        else {
            // if all the coordinates in sortedCoord are blocked, return current coordinate (don't move)
            if (k == bRange - 1) {
                var target;
                target[0] = x/32-2;
                target[1] = y/32-2;
                return target;
            }
        }
    }
    
}
// if bestCoord isn't an array, this means there are are no tiles with weights > 0 within Enemy's range
// in this case, select a random tile within range 
else {
    // convert each coordinate in argument0 (weightArray) into an array [x,y] and add it to the randList
    randList = ds_list_create();
    var tempCoord;
    for (var n = 0; n < eRange; n++) {
        tempCoord[0] = argument0[n, 0];
        tempCoord[1] = argument0[n, 1];
        ds_list_add(randList, tempCoord);
    }
    
    var randCoord;
    // if the coordinate at randList[randIndex] is free, return it
    // else, remove the coordinate from randList, call irandom again and repeat
    // finally, if no coordinates are free, do not move
    for (var m = 0; m < eRange ; m++) {
        // pick a random index in randList
        randIndex = irandom(eRange - 1);
        randCoord = ds_list_find_value(randList, randIndex);
        if ((scr_mp_grid_free(obj_PathController.mpGrid, (randCoord[0]+2)*32, (randCoord[1]+2)*32)) == 1) {
            target[0] = randCoord[0];
            target[1] = randCoord[1];
            return target;
            break;
        }
        else {
            // there is only 1 coordinate left in randList (and it is not free because we are in the else condition
            if (eRange == 1) {
                target[0] = x/32-2;
                target[1] = y/32-2;
                return target;
            }
            else {
                ds_list_delete(randList, randIndex);
                eRange -= 1;
                m -= 1;
            }
        }
    }
}

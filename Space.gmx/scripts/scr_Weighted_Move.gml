// scr_mp_grid_free(obj_PathController.mpGrid, x, y);

// scr_Weighted_Move(weightArray) outputs an array [x, y] which is the next movement location of the object

/*

| x | x |0 | x | x |
| x | 1 |2 | 3 | x |
| 4 | 5 |6 | 7 | 8 |
| x | 9 |10|11 | x |
| x | x |12| x | x |

*/

var bestInc = 0;
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

sortedCoord = ds_grid_create(1, 3);
// if bestCoord size isn't 0, sort bestCoord by weight into sortedCoord
if (is_array(bestCoord)) {
    bRange = array_height_2d(bestCoord);
    ds_grid_resize(sortedCoord, bRange, 3); // create a DS_Grid with W=bRange, H=3
    
    for (var j = 0; j < bRange; j++) {
        
        if (bestCoord[j, 2] == bRange) {
            ds_grid_set(sortedCoord, 0, 0, bestCoord[j, 0]);
            ds_grid_set(sortedCoord, 0, 1, bestCoord[j, 1]);
            ds_grid_set(sortedCoord, 0, 2, bestCoord[j, 2]);
        }
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
        else if (bestCoord[j, 2] == bRange - 4) {
            ds_grid_set(sortedCoord, 4, 0, bestCoord[j, 0]);
            ds_grid_set(sortedCoord, 4, 1, bestCoord[j, 1]);
            ds_grid_set(sortedCoord, 4, 2, bestCoord[j, 2]);
        }
    }
    
    for (var k = 0; k < bRange; k++) {
        if ((scr_mp_grid_free(obj_PathController.mpGrid, (ds_grid_get(sortedCoord, k, 0)+2)*32, (ds_grid_get(sortedCoord, k, 1)+2)*32)) == 1) {
            target[0] = ds_grid_get(sortedCoord, k, 0);
            target[1] = ds_grid_get(sortedCoord, k, 1);
            return target;
            break;
        }
        else {
            if (k == bRange - 1) {
                var target;
                target[0] = x/32-2;
                target[1] = y/32-2;
                return target;
            }
        }
    }
    
}

return 0;

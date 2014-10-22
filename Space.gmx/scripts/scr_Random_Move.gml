// scr_Random_Move(weightArray) outputs an array with random coordinates within range [x, y] which is the next movement location of the object

/*

| x | x |0 | x | x |
| x | 1 |2 | 3 | x |
| 4 | 5 |6 | 7 | 8 |
| x | 9 |10|11 | x |
| x | x |12| x | x |

*/

// Convert each coordinate in argument0 (weightArray) into an array [x,y] and add it to the randList
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

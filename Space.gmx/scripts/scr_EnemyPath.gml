// scr_mp_grid_free(obj_PathController.mpGrid, x, y);

// scr_EnemyPath(range, obj_Player.lastMoved) outputs an array [x, y] which is the next movement location of the object
// This script can be used for Enemy Movement with range 12
/*
| x | x |12| x | x |
| x | 6 |7 | 8 | x |
|11 | 5 |0 | 1 | 9 |
| x | 4 |3 | 2 | x |
| x | x |10| x | x |

0 = No Movement
*/

/*
| x | x |0 | x | x |
| x | 1 |2 | 3 | x |
| 4 | 5 |6 | 7 | 8 |
| x | 9 |10|11 | x |
| x | x |12| x | x |
*/



/*
var testSquare;

//switch (irandom(argument0)) {
switch (irandom(1)) {
    case 0:
        var target;
        target[0] = x;
        target[1] = y;
        return target;
        break;
    case 1:
        testSquare = scr_mp_grid_free(obj_PathController.mpGrid,x + 32,y);
        if (testSquare == 0) {
            // scr_Movement(argument0); 
            // Figure out this recursion later
            // Ideally if the square is blocked, keep using this script until
            // an unblocked square is found (if all squares blocked, don't move)
            var target;
            target[0] = x;
            target[1] = y;
            return target;
        }
        else {
            var target;
            target[0] = x + 32;
            target[1] = y;
            return target;
        }
        break;
    case 2:
        testSquare = scr_mp_grid_free(obj_PathController.mpGrid,x + 32, y + 32);
        if (testSquare == 0) {
            // scr_Movement(argument0);
            var target;
            target[0] = x;
            target[1] = y;
            return target;
        }
        else {
            var target;
            target[0] = x + 32;
            target[1] = y + 32;
            return target;
        }
        break;
    case 3:
        testSquare = scr_mp_grid_free(obj_PathController.mpGrid,x, y + 32);
        if (testSquare == 0) {
            // scr_Movement(argument0);
            var target;
            target[0] = x;
            target[1] = y;
            return target;
        }
        else {
            var target;
            target[0] = x;
            target[1] = y + 32;
            return target;
        }
        break;
    case 4:
        testSquare = scr_mp_grid_free(obj_PathController.mpGrid,x - 32, y + 32);
        if (testSquare == 0) {
            // scr_Movement(argument0);
            var target;
            target[0] = x;
            target[1] = y;
            return target;
        }
        else {
            var target;
            target[0] = x - 32;
            target[1] = y + 32;
            return target;
        }
        break;
    case 5:
        testSquare = scr_mp_grid_free(obj_PathController.mpGrid,x - 32, y);
        if (testSquare == 0) {
            // scr_Movement(argument0);
            var target;
            target[0] = x;
            target[1] = y;
            return target;
        }
        else {
            var target;
            target[0] = x - 32;
            target[1] = y;
            return target;
        }
        break;
    case 6:
        testSquare = scr_mp_grid_free(obj_PathController.mpGrid,x - 32, y - 32);
        if (testSquare == 0) {
            // scr_Movement(argument0);
            var target;
            target[0] = x;
            target[1] = y;
            return target;
        }
        else {
            var target;
            target[0] = x - 32;
            target[1] = y - 32;
            return target;
        }
        break;
    case 7:
        testSquare = scr_mp_grid_free(obj_PathController.mpGrid,x, y - 32);
        if (testSquare == 0) {
            // scr_Movement(argument0);
            var target;
            target[0] = x;
            target[1] = y;
            return target;
        }
        else {
            var target;
            target[0] = x;
            target[1] = y - 32;
            return target;
        }
        break;
    case 8:
        testSquare = scr_mp_grid_free(obj_PathController.mpGrid,x + 32, y - 32);
        if (testSquare == 0) {
            // scr_Movement(argument0);
            var target;
            target[0] = x;
            target[1] = y;
            return target;
        }
        else {
            var target;
            target[0] = x + 32;
            target[1] = y - 32;
            return target;
        }
        break;
    case 9:
        testSquare = scr_mp_grid_free(obj_PathController.mpGrid,x + 64, y);
        if (testSquare == 0) {
            // scr_Movement(argument0);
            var target;
            target[0] = x;
            target[1] = y;
            return target;
        }
        else {
            var target;
            target[0] = x + 64;
            target[1] = y;
            return target;
        }
        break;
    case 10:
        testSquare = scr_mp_grid_free(obj_PathController.mpGrid,x , y + 64);
        if (testSquare == 0) {
            // scr_Movement(argument0);
            var target;
            target[0] = x;
            target[1] = y;
            return target;
        }
        else {
            var target;
            target[0] = x;
            target[1] = y + 64;
            return target;
        }
        break;
    case 11:
        testSquare = scr_mp_grid_free(obj_PathController.mpGrid,x - 64, y);
        if (testSquare == 0) {
            // scr_Movement(argument0);
            var target;
            target[0] = x;
            target[1] = y;
            return target;
        }
        else {
            var target;
            target[0] = x - 64;
            target[1] = y;
            return target;
        }
        break;
    case 12:
        testSquare = scr_mp_grid_free(obj_PathController.mpGrid,x, y - 64);
        if (testSquare == 0) {
            // scr_Movement(argument0);
            var target;
            target[0] = x;
            target[1] = y;
            return target;
        }
        else {
            var target;
            target[0] = x;
            target[1] = y - 64;
            return target;
        }
        break;
}

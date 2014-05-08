// scr_mp_grid_free(obj_PathController.mpGrid, x, y + 32);

// scr_Movement(range)
// This script can be used for Enemy Movement with range 2
/*
| x | x |12| x | x |
| x | 6 |7 | 8 | x |
|11 | 5 |0 | 1 | 9 |
| x | 4 |3 | 2 | x |
| x | x |10| x | x |

0 = No Movement
*/

var testSquare;

switch (irandom(argument0)) {
    case 0:
        var target;
        target[0] = x;
        target[1] = y;
        return target;
        break;
    case 1:
        testSquare = scr_mp_grid_free(obj_PathController.mpGrid,x + 32,y);
        if (testSquare == 0) {
            scr_Movement(argument0);
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
            scr_Movement(argument0);
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
            scr_Movement(argument0);
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
            scr_Movement(argument0);
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
            scr_Movement(argument0);
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
            scr_Movement(argument0);
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
            scr_Movement(argument0);
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
            scr_Movement(argument0);
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
            scr_Movement(argument0);
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
            scr_Movement(argument0);
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
            scr_Movement(argument0);
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
            scr_Movement(argument0);
        }
        else {
            var target;
            target[0] = x;
            target[1] = y - 64;
            return target;
        }
        break;
}

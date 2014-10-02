// scr_Range_Setup(x, y)
// Hard-code an array of tiles within an object's range
// This is for Range 12

/*
| x | x |0 | x | x |
| x | 1 |2 | 3 | x |
| 4 | 5 |6 | 7 | 8 |
| x | 9 |10|11 | x |
| x | x |12| x | x |
*/

gridX = (argument0/32) - 2;
gridY = (argument1/32) - 2;

rangeArray[0,0] = gridX;
rangeArray[0,1] = gridY - 2;

rangeArray[1,0] = gridX - 1;
rangeArray[1,1] = gridY - 1;

rangeArray[2,0] = gridX;
rangeArray[2,1] = gridY - 1;

rangeArray[3,0] = gridX + 1;
rangeArray[3,1] = gridY - 1;

rangeArray[4,0] = gridX - 2;
rangeArray[4,1] = gridY;

rangeArray[5,0] = gridX - 1;
rangeArray[5,1] = gridY;

rangeArray[6,0] = gridX;
rangeArray[6,1] = gridY;

rangeArray[7,0] = gridX + 1;
rangeArray[7,1] = gridY;

rangeArray[8,0] = gridX + 2;
rangeArray[8,1] = gridY;

rangeArray[9,0] = gridX - 1;
rangeArray[9,1] = gridY + 1;

rangeArray[10,0] = gridX;
rangeArray[10,1] = gridY + 1;

rangeArray[11,0] = gridX + 1;
rangeArray[11,1] = gridY + 1;

rangeArray[12,0] = gridX;
rangeArray[12,1] = gridY + 2;

return rangeArray;

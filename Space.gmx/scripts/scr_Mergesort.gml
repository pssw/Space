//-------------------------------------------------
// Author:          Desert Dog - GML version
// Name:            mergesort( size );
// Description:     Takes myArray and sorts it using quicksort
// Reference:       http://en.wikipedia.org/wiki/Merge_sort
//                  Bottom-up, non-recursive version
// Arguments:       size - size of array to shuffle
// Return:          None
//-------------------------------------------------

/* scr_Mergesort(size,array) */


var width, size;
size = argument0;
myArray = argument1;

for ( width = 1; width < size; width = 2 * width )
{
    var i;
    for ( i = 0; i < size; i = i + 2 * width )
    {
        //bottom-up merge
        var iLeft, iRight, iEnd, B;
        iLeft = i;
        iRight = min( i + width, size );
        iEnd = min( i + 2 * width, size );
        
        var i0, i1, j;
        i0 = iLeft;
        i1 = iRight;
        
        for ( j = iLeft; j < iEnd; j += 1 )
        {
            if ( i0 < iRight )
            {
                if ( i1 >= iEnd )    
                {
                    B[ j ] = myArray[i0, 2];
                    i0 = i0 + 1;
                }
                else
                    if ( myArray[i0, 2] <= myArray[i1, 2] )
                    {
                        B[ j ] = myArray[i0, 2];
                        i0 = i0 + 1;
                    }
                    else
                    {
                        B[ j ] = myArray[i1, 2];
                        i1 = i1 + 1;
                    }
            }
            else
            {
                B[ j ] = myArray[i1, 2];
                i1 = i1 + 1;
            }
        }
    }
    //copy array B to myArray.
    for ( i = 0; i < size; i += 1 )
    {
        myArray[i, 2] = B[ i ];
    }
}

return myArray;

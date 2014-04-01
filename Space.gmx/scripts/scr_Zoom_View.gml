// argument0 = 0 - zoom in, 1 - zoom out, 2 - reset view
// argument1 = zoom multiplier
// argument2 = x position of view center
// argument3 = y position of view center
// argument4 = minimum zoom factor
// argument5 = maximum zoom factor
// argument6 = base height
// argument7 = limit view to room (true/false)

if (argument0 == 2) {
    zoom = 1;
}
else {
    if (argument0 = 1) {
        if (zoom < argument5) {
            zoom *= argument1;
        }
    }
    else {
        if (zoom > argument4) {
            zoom /= argument1;
        }
    }
}

view_hview[0] = argument6 * zoom;
view_wview[0] = view_hview[0] * (view_wport[0] / view_hport[0]);

scr_Center_View(argument2, argument3, argument7);

// limit the values for minimum width/height to base dimensions of 1024x1024

var aspect = display_get_width() / display_get_height();

if (aspect < 1) {
    view_hport[0] = argument0;
}
else {
    view_hport[0] = argument1;
}

// set GUI layer (layer where Draw GUI draws to) scale to a minimum value, 
// with width or height scaling based on that value and the aspect ratio

// script returns the constant to tell us which orientation the device is in

var aspect_ratio = display_get_width() / display_get_height();

if (display_get_height() < display_get_width()) {
    if (argument1 != landscape) {
        display_set_gui_size(argument0 * aspect_ratio, argument0);
        return landscape;
    }
}
else {
    if (argument1 != portrait) {
        display_set_gui_size(argument0, argument0 / aspect_ratio);
        return portrait;
    }
}

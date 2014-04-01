var aspect = display_get_width() / display_get_height();

if (aspect < 1) {
    if (argument2 == portrait) {
        view_hport[0] = argument0;
    }
    else {
        view_hport[0] = argument1;
    }
}
else {
    if (argument2 == landscape) {
        view_hport[0] = argument0;
    }
    else {
        view_hport[0] = argument1;
    }
}

view_wport[0] = view_hport[0] * aspect;

view_hview[0] = view_hport[0];
view_wview[0] = view_wport[0];

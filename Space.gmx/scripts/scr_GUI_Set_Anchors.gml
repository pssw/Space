// can check to see which constant is being used for display (Landscape or Portrait)
// all coordinates are set relative to the GUI width and height
// call this script after scr_Set_GUI so that GUI layer size is set first
// anchor points are recalculated after

anchor_x[0] = 32;
anchor_y[0] = 32;
anchor_x[1] = display_get_gui_width() - 32;
anchor_y[1] = 32;
anchor_x[2] = 32;
anchor_y[2] = display_get_gui_height() - 32;
anchor_x[3] = display_get_gui_width() - 32;
anchor_y[3] = display_get_gui_height() - 32;
anchor_x[4] = display_get_gui_width() / 2;
anchor_y[4] = display_get_gui_height() / 2;

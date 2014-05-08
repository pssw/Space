//mp_grid_free(grid,x,y)
// argument0 = grid
// argument 1 = x
// argument 2 = y

p = path_add();

if (mp_grid_path(argument0, p, argument1, argument2, argument1, argument2, 0)) {
    // if the square in (argument1, argument2) is empty, return 1
    path_delete(p);
    return 1;
}
else {
    // if the square in (argument1, argument2) is full, return 0
    path_delete(p);
    return 0;
}

// mp_grid_path(id, path, xstart, ystart, xgoal, ygoal, allowdiag)
// id = grid

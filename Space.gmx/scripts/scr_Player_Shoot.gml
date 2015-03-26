// scr_Player_Shoot(currentWeapon)
// Player fires it's current weapon at the target

if (obj_StopBullet.inProgress == 0) {
    if (argument0 == 1) {
        shot = instance_create(obj_Player.x, obj_Player.y, obj_PlayerPulse1);
        obj_StopBullet.inProgress = 1;
    }
    else if (argument0 == 2) {
    
    }
    else { // currentWeapon == 3
    
    }
}

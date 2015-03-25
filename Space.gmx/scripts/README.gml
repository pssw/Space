/* 

reset fog of war -> line 72 in obj_Fog.Draw

bug: spinning enemy sprite FIXED

bug: e1 does nothing after 1 turn of being in range of player
issue: something broken after E1 shoots (doesnt end turn?)

player moves into e1 range                           shoot           OK
- player stays in e1 range after move                no action       NO - should shoot
-- player stays in e1 range after move               shoot           OK
--- etc                                              no action       NO - should shoot

player moves into e1 range                           shoot           OK
- player stays in e1 range after move                no action       NO - should shoot
-- player moves out of e1 range                      chase           OK
--- player stays in e1 range after move              shoot           OK

player moves into e1 range                           shoot           OK
- player shoots e1                                   no action       NO - should shoot

player moves into e1 range                           shoot           OK
- player moves out of e1 range                       no action       NO - should chase
-- player stays out of e1 rangerandom                move            NO - should chase if player was in range

player moves into e1 range                           shoot           OK
- player moves out of e1 range                       no action       NO - should chase
-- player moves into e1 range                        shoot           OK
--- player stays in e1 range after move              no action       NO - should shoot


e1 moves into player range                           none
- player stays in e1 range after move                shoot           OK
-- player moves out of e1 range                      no action       NO - should chase
- player moves out of e1 range                       chase           OK

e1 moves into player range                           none
- player moves out of e1 range                       chase           OK
-- player moves out of e1 range                      chase           OK

e1 moves into player range                           none
- player shoots e1                                   shoot           OK
-- player moves out of e1 range                      no action       NO - should chase
OR
-- player stays in e1 range after move               no action       NO - should shoot












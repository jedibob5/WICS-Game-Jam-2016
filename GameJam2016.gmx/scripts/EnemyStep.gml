event_inherited();
//Follow Player
if(x > ObjPlayer.x)
{
    hspd = -spd;
    image_xscale = 1;
} else
{
    hspd = spd;
    image_xscale = -1;
}

//Harm player on collision
/*if(place_meeting(x, y, ObjPlayer))
{
    script_execute(DamagePlayer);
}*/

// Horizontal collisions with others
if(place_meeting(x+hspd, y, ParActor))
{
    while(!place_meeting(x+sign(hspd), y, ParActor))
    {
        x += sign(hspd);
    }
    hspd = 0;
    image_index = 2;
}

// Horizontal collisions with walls
if(place_meeting(x+hspd, y, ObjSolid))
{
    while(!place_meeting(x+sign(hspd), y, ObjSolid))
    {
        x += sign(hspd);
    }
    hspd = 0;
    image_index = 2;
}

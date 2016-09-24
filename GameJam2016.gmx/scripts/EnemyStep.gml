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
if(place_meeting(x, y, ObjPlayer))
{
    script_execute(DamagePlayer);
}

// Horizontal collisions
if(place_meeting(x+hspd, y, ObjEnemyWalker))
{
    while(!place_meeting(x+sign(hspd), y, ObjEnemyWalker))
    {
        x += sign(hspd);
    }
    hspd = 0;
}

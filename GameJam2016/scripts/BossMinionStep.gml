event_inherited();
//Follow Player
if(!launched){
    if(x > ObjPlayer.x)
    {
        hspd = -spd;
        image_xscale = 1;
    } else
    {
        hspd = spd;
        image_xscale = -1;
    }
}

//Harm player on collision
if(place_meeting(x, y, ObjPlayer))
{
    script_execute(DamagePlayer);
}


//Horizontal collisions with walls
if(place_meeting(x + sign(hspd), y, ObjSolid)) {
    while(!place_meeting(x + sign(hspd), y, ObjSolid)) {
        x += sign(hspd);
    }
    hspd = 0;
    image_index = 2;
}
//launch
if(place_meeting(x, y+1, ObjSolid) && !jumping)
{
    launched = false;
}


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

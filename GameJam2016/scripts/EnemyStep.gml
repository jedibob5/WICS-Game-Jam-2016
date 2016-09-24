event_inherited();
//Follow Player
if(x > ObjPlayer.x)
{
    hspd = -spd;
} else
{
    hspd = spd;
}

//Harm player on collision
if(place_meeting(x, y, ObjPlayer))
{
    script_execute(DamagePlayer);
}

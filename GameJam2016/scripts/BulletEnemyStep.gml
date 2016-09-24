//Move at constant speed
x += spd

//Harm player on collision
if(place_meeting(x, y, ObjPlayer))
{
    script_execute(DamagePlayer);
}

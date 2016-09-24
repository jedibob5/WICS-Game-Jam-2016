//Move at constant speed
x += spd

//Harm player on collision
if(place_meeting(x, y, ObjPlayer))
{
    script_execute(DamagePlayer);
}

//Direction bullet faces
if(sign(spd) == 1) {
    image_xscale = -1;
} else {
    image_xscale = 1;
}

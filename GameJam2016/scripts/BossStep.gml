if(health == 0) {
    instance_deactivate_object(ObjBoss);
}

//launch
if(place_meeting(x, y+1, ObjSolid) && !jumping)
{
    launched = false;
}

//-----------------------------Actor Step-------------------------------------------------
// Check for ground
if(place_meeting(x, y+1, ObjSolid) && !jumping)
{
    vspd = 0;
    isOnGround = true;
} else
{
    if(jumping)
    {
        jumping = false;
    }
    isOnGround = false;
    // Gravity
    if(vspd < 10)
    {
        vspd += grav;
    }
}

// Horizontal collisions
if(place_meeting(x+hspd, y, ObjSolid))
{
    while(!place_meeting(x+sign(hspd), y, ObjSolid))
    {
        x += sign(hspd);
    }
    hspd = 0;
}

//Collision with player
if(throwing>0) {
if(distance_to_object(ObjPlayer) <= 0) {
    sprite_index = sp_128ph;
} else if(hspd == 0) {
    sprite_index = sp_128ph_atk;
} else if(hspd == 0) {
    sprite_index = sp_128ph;
} else {
    sprite_index = sp_128ph_walk;
}

// Move horizontally
x += hspd;

// Vertical collisions
if(place_meeting(x, y+vspd, ObjSolid))
{
    while(!place_meeting(x, y+sign(vspd), ObjSolid))
    {
        y += sign(vspd);
    }
    vspd = 0;
}

// Move vertically
y += vspd;
//--------------------------------Modded Enemy Step---------------------------------------
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

//throw enemies on player jump
if(throwing>0){
    if(throwing==26||throwing==54||throwing==82){
        with(instance_create(x+24*sign(hspd), y, ObjBossMinion)){
            launched=true;
            hspd=10*sign(ObjPlayer.x - x);
            vspd=-10;
        }
    }
    throwing--;
    hspd=0;
}
else if(ObjPlayer.y<y-64){
    throwing=84;
    sprite_index = sp_128ph_atk;
    image_index = 0;
}}

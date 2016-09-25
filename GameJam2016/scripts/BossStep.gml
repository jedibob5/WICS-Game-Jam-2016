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
if(distance_to_object(ObjPlayer) <= 32) {
    sprite_index = sp_128ph;
} else if(hspd == 0) {
    sprite_index = sp_128ph_atk;
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
<<<<<<< HEAD
    image_index = 2;
=======
>>>>>>> origin/master
}

//throw enemies on player jump
if(ObjPlayer.y<y-64){
    throwing=63;
}
if(throwing>0){
    if(throwing==20||throwing==41||throwing==62){
        with(instance_create(x+24*sign(hspd), y, ObjEnemyWalker)){
            launched=true;
            hspd=10*image_xscale;
            vspd=-10;
        }
    }
    throwing--;
    hspd=0;
}

    

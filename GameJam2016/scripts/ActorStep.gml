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

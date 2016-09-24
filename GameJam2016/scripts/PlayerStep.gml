/// Platform physics

var rkey = keyboard_check(ord("D"));
var lkey = keyboard_check(ord("A"));
var jkey = keyboard_check(ord("W"));

// Check for ground
if(place_meeting(x, y+1, ObjSolid))
{
    vspd = 0;
    
    // Jumping
    if(jkey)
    {
        vspd = -jspd;
    }
}
else
{
    // Gravity
    if(vspd < 10)
    {
        vspd += grav;
    }
}

// Moving right
if(rkey)
{
    hspd = spd;
}

// Moving left
if(lkey)
{
    hspd = -spd;
}

// Check for not moving
if((!rkey && !lkey) || (rkey && lkey))
{
    hspd = 0;
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
inv--;

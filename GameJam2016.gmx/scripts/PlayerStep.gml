event_inherited();

// Check for player input
var rkey = keyboard_check(ord("D"));
var lkey = keyboard_check(ord("A"));
var jkey = keyboard_check_pressed(vk_space);
var ukey = keyboard_check(ord("W"));

//Jumping
if(isOnGround && jkey)
{
    isOnGround = false;
    jumping = true;
    vspd = -jspd;
}

// Moving right
if(rkey)
{
    hspd = spd;
    image_xscale = -1;
}

// Moving left
if(lkey)
{
    hspd = -spd;
    image_xscale = 1;
}

// Check for not moving
if((!rkey && !lkey) || (rkey && lkey))
{
    image_index = 21;
    hspd = 0;
}

//Invulnerability timer decrement
if(inv >= 0)
{
    inv--;
}

//Sprite flashing when invulnerable
if(inv > 0 && inv % 4 == 0)
{
    image_alpha = 0;
} else if(inv > 0 && inv % 2 == 0)
{
    image_alpha = 1;
}
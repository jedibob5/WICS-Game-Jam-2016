event_inherited();

// Check for player input
var rkey = keyboard_check(ord("D"));
var lkey = keyboard_check(ord("A"));
var jkey = keyboard_check(vk_space);
var ukey = keyboard_check(ord("W"));

//Jumping
if(isOnGround && jkey)
{
    isOnGround = false;
    jumping = true;
    jumpTimer = 10;
    vspd = -jspd;
} else if(jumpTimer > 0 && jkey)
{
    vspd = -jspd;
    jumpTimer--;
}

// Jumper object response
if(place_meeting(x, y+5, ObjJumper)){
    vspd=-jspd*2.5;
    isOnGround = false;
}

// Moving right
if(rkey)
{
    hspd = spd;
    sprite_assign(player, sp_player_run1);
    image_xscale = -1;
}

// Moving left
if(lkey)
{
    hspd = -spd;
    sprite_assign(player, sp_player_run1);
    image_xscale = 1;
}

// Check for not moving
if((!rkey && !lkey) || (rkey && lkey))
{
    hspd = 0;
    sprite_assign(player, sp_player);
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

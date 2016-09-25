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
    audio_play_sound(sfx_Jump, 0, false);
} else if(!jkey)
{
    jumpTimer = 0;
} else if(jumpTimer > 0 && jkey)
{
    vspd = -jspd;
    jumpTimer--;
}



// Moving right
if(rkey && !launched)
{
    hspd = spd;
    sprite_assign(player, sp_player_run1);
    image_xscale = -1;
}

// Moving left
if(lkey && !launched)
{
    hspd = -spd;
    sprite_assign(player, sp_player_run1);
    image_xscale = 1;
}

// Check for not moving
if(((!rkey && !lkey) || (rkey && lkey)) && !launched)
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

// Jumper object response
if(place_meeting(x, y+5, ObjJumper)){
    vspd=-jspd*2;
    hspd=instance_nearest(x, y, ObjJumper).image_xscale*10;
    isOnGround = false;
    launched = true;
}
if(place_meeting(x, y+1, ObjSolid) && !jumping)
{
    launched = false;
}


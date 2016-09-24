if(abs(ObjPlayer.x - x) <= 256) {
    sprite_assign(sp_bird, sp_divebomb);
    if(sign(ObjPlayer.x - x) == -1) {
        image_xscale = 1;
        direction = 225;
    } else if(sign(ObjPlayer.x - x) == 1) {
        image_xscale = -1;
        direction = 315;
    } else {
        direction = 180;
    }
} else {
    direction = 180 * sign(ObjPlayer.x - x);
    sprite_assign(sp_bird, sp_bird2);
}

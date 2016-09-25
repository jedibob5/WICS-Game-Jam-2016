if(abs(ObjPlayer.x - x) <= 256) {
    draw_sprite(sp_dive_bomb, 0, x, y);
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
    draw_sprite(sp_bird, image_index, x, y);
}

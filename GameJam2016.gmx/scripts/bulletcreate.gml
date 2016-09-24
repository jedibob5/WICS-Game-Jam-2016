speed = 12;
if(ObjPlayer.hspd == 0) {
    if(ObjPlayer.image_xscale == 1) {
        direction = 180;
    } else {
        direction = 0;
    }
} else if (keyboard_check(ord('D'))) {
    if(keyboard_check(ord('W'))) {
        direction = 45;
    } else {
        direction = 0;
    }
} else if(keyboard_check(ord('A'))) {
        if(keyboard_check(ord('W'))) {
            direction = 135;
        } else {
            direction = 180;
        }
} else {
    if(keyboard_check(ord('W'))) {
        direction = 90;
    }
}

speed = 12;
if (keyboard_check(ord('D'))) {
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

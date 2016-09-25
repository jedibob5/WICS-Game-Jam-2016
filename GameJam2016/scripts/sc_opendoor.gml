if(instance_number(ParDoor) > 0) {
    if(abs(x - ObjDoor1.x) <= 48 && abs(y - ObjDoor1.y) <= 128) {
        room_goto(Room);
    } else if(abs(x - ObjDoor2.x) <= 48 && abs(y - ObjDoor2.y) <= 128) {
        room_goto(rm_lvl2);
    } else if(abs(x - ObjDoor3.x) <= 48 && abs(y - ObjDoor3.y) <= 128) {
        room_goto(rm_level3);
    }
}

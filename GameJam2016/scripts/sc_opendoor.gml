if(instance_number(ParDoor) > 0) {
    if(abs(x - ObjDoor1.x) <= 32 && abs(y - ObjDoor1.y) <= 128) {
        room_goto(Room);
    } else if(abs(x - ObjDoor2.x) <= 32 && abs(y - ObjDoor2.y) <= 128) {
        room_goto(rm_lvl2);
    }
}

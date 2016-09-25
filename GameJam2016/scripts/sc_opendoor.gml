if(instance_number(ParDoor) > 0) {
    if(abs(x - ObjDoor1.x) <= 32 && abs(y - ObjDoor1.y) <= 128) {
        room_goto(Room);
    }
}

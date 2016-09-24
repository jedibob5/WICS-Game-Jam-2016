if(ObjDoor1.x) {
    if(abs(x - ObjDoor1.x) <= 32 && abs(y - ObjDoor1.y) <= 128) {
        room_goto(Room);
    }
}

if(instance_number(ObjEnemyspawner) == 0 && instance_number(ObjFlyEnemySpawner) == 0) {
    global.lvl2done = true;
    if(lvl1done && lvl2done && lvl3done) {
        room_goto(rm_hub2);
    } else {
        room_goto(rm_hub);
    }
}

if(ObjPlayer.y > 1000) {
    room_goto(Death);
}


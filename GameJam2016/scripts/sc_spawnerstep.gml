if(instance_number(ObjEnemyWalker) < 10) {
    count ++;
    if(count % 50 == 0 && abs(x - ObjPlayer.x) < 640) {
        instance_create(x, y, ObjEnemyWalker);
    }
}

if(instance_number(ObjEnemyWalker) < 10) {
        count ++;
        if(count % 50 == 0 && abs(x - ObjPlayer.x) < 640) {
            if(instance_number(ObjEnemyWalker) > 0) {
                if(place_meeting(x, y, ObjEnemyWalker)) {
                } else {
                    instance_create(x, y, ObjEnemyWalker);
                }
            } else {
                instance_create(x, y, ObjEnemyWalker);
            }
        }
    }

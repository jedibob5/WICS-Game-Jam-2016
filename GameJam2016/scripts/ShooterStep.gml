event_inherited();
//Check if player is in range of projectile attack
if((x - 120) >= ObjPlayer.x || (x + 120) <= ObjPlayer.x)
    inRangeX = true;
if((y + 20) <= ObjPlayer.y || (y - 20) >= ObjPlayer.y)
    inRangeY = true;
    
//If player is in range, stop and attack
if(inRangeX = true && inRangeY = true && shotTimer <= 0)
{
    hspd = 0;
    instance_create(x, y, ObjEnemyBullet);
    shotTimer = 60;
}

//Decrement shot timer
if(shotTimer > 0)
{
shotTimer--;
}

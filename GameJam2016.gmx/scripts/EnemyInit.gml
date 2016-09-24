/// Initialize variables (adjustments per enemy type in individual enemy scripts)
event_inherited();
grav = 1;
spd = 2;
hspd = 0;
vspd = 0;

//Variables for enemies with ranged attacks
inRangeX = false;
inRangeY = false;
shotTimer = 0;

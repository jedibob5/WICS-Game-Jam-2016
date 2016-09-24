with(ObjPlayer){
if(inv<0){
    health -= 1;
    if(health<=0){
        room_goto(Death);
    }
    inv=60;
}
}

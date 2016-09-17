//scr_random_powerup looks at our random item and decides what item to spawn
//case 0 is maga hat
//case 1 is heart (health
//Can put this in a timer and just set our timer and change image here
//so it changes image to hurt frame and spawns
instance_destroy();
switch (randomItem)
{
    case 0:
    {   
        //create our maga hat at current location ( may want to offset some)
        instance_create(x,y,obj_magaHat);
    }
    case 1:
    {
        instance_create(x,y,obj_health);
    }

}

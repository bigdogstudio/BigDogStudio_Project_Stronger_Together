//scr_random_powerup looks at our random item and decides what item to spawn
//case 0 is maga hat
//case 1 is heart (health
//Can put this in a timer and just set our timer and change image here
//so it changes image to hurt frame and spawns
instance_destroy();
//offset our spawn so user can see
var randomOffset;
randomOffset = random(10);
// lets roll another random
var randomChoice;
randomChoice = irandom(1);
if (randomChoice == 1)
{
randomOffset = randomOffset * 1;
}
else if (randomChoice == 0)
{
randomOffset = randomOffset * -1;
}
switch (randomItem)
{    
    case 0:
    {   
        //create our maga hat at current location ( may want to offset some)
        instance_create(x + randomOffset,y,obj_magaHat);
    }
    case 1:
    {
        instance_create(x + randomOffset,y,obj_health);
    }
    default:
    {
    }

}

///scr_damage_check(objhealth,damage)

var newHealth; //temp variable for new health

if (argument0 - argument1 > 0)
{
    //Still Alive!
    newHealth = argument0 - argument1;
    return(newHealth);
}
else
{
    //You are dead!  Setting newHealth to -1 to indicate you are dead!
    newHealth = -1;
    return(newHealth);
}


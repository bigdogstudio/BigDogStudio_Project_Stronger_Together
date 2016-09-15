///Enemy movement script
//def initial in enemy
//set timers
if (still)
{
    sprite_index = spr_enemy_donkey_still;
    //can do image_speed image index make this generic for enemies
    if(alarm[0] == -1) //alarm has not yet been set
    {
        //this alarm tells us to start moving;
        alarm[0] = timeToMoving;
    }
    
}
else if(moving)
{
    sprite_index = spr_enemy_donkey_ani;
    if (distance_to_object(obj_donald) < 100) // check our distance to player, if close move towards him
    {
        //if within 100 pixels we move towards donald only for x dir
        move_towards_point(obj_donald.x,y,enemySpeed);
        //We tell the enemy close not to reset their timers until in range.
        alarm[0] = -1;
        alarm[1] = -1;
    }
    else
    {
        if alarm[0] == -1
        {
            alarm[0] = timeToStill; //we will move for 240 / franerate
        }
        if (alarm[1] == -1) //Alarm 1 = left right move 
        {
            alarm[1] = timeToChangeDir;
        }
        if (moveLeft)
        {
            image_xscale = -1;
            x -= enemySpeed;
        
        }
        else if (moveRight)
        {
            image_xscale = 1;
            x += enemySpeed;   
        }        
    }
}


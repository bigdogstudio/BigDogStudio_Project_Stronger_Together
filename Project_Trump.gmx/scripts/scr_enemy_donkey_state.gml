///Enemy movement script
//def initial in enemy
//set timers
if (distance_to_object(obj_donald) < agroRange) // check our distance to player, if close move towards him
    //((distance_to_point(obj_donald.x,y) < 100) && (distance_to_point(obj_donald.x,y) > 10)) //check only donalds x, we dont consider y!
    //(distance_to_object(obj_donald) < 100 && distance_to_object(obj_donald) > 5) // check our distance to player, if close move towards him
        //if within 100 pixels we move towards donald only for x dir
    {
        sprite_index = spr_enemy_donkey_ani;
        if (distance_to_point(obj_donald.x,y) < attackRange)
        {
            speed = 0;
            //attack animation;
        }
        else
        {
            move_towards_point(obj_donald.x,y,enemySpeed);
            //reg move animation
        }
        //Tell our enemy to stay on screen
        if ((x >= (room_width/2)) && !moveLeftRightSet)
        {
            //if we tell it to moveRight it will switch to move left
            moveRight = true;
            moveLeft  = false;
        }
        else if((x < (room_width/2)) && !moveLeftRightSet)
        {
            moveRight = false;
            moveLeft  = true;
        }
        moveLeftRightSet = true;
        //We tell the enemy close not to reset their timers until in range.
        alarm[0] = -1;
        alarm[1] = -1;
}
else if (still)
{
    speed = 0;
    sprite_index = spr_enemy_donkey_still;
    //can do image_speed image index make this generic for enemies
    if(alarm[0] == -1) //alarm has not yet been set
    {
        //this alarm tells us to start moving;
        alarm[0] = timeToMoving;
    }
    moveLeftRightSet = false; //Do we want to always eval?
    
}
else if(moving)
{
        sprite_index = spr_enemy_donkey_ani;
        //reset our speed from move to obj;
        speed = 0;
        
        if alarm[0] == -1
        {
            //we will move for 240 / franerate
            alarm[0] = timeToStill; 
        }
        
        //Alarm 1 = left right move 
        if (alarm[1] == -1) 
        {
            alarm[1] = timeToChangeDir;
        }
        
        /*if (moveLeftRightSet)
        {
            //must reset speed from being set in move towards point
            speed = 0;
        }
        should always reset speed if in else not jsut movelftright
        */
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


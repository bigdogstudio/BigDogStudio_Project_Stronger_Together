///Enemy movement script
//def initial in enemy
//set timers
if (still)
{
    sprite_index = spr_wall_moving_still;
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
    sprite_index = spr_wall_moving_ani;
    {
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
            x -= wallSpeed;
            //Lock donald onto the platform if hes on it;
            if (distance_to_object(obj_donald) < distanceToHoldDon)
            {
                //we give donald a boost of half our movement
                obj_donald.x -= wallSpeed ;
                
            }
        
        }
        else if (moveRight)
        {
            image_xscale = 1;
            x += wallSpeed;   
            //Lock donald onto the platform if hes on it;
            if (distance_to_object(obj_donald) < distanceToHoldDon)
            {
                //we give donald a boost of half our movement
                obj_donald.x += wallSpeed ;
                
            }
        }        
    }
}


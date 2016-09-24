///Enemy movement script
//def initial in enemy
//set timers
if (distance_to_object(obj_donald) < agroRange) //We are close enough to engage donald
    {
    
        sprite_index = spr_enemy_hillary_ani;
        //very close to donald attack
        if (distance_to_point(obj_donald.x,obj_donald.y) < attackRange)
        {
            speed = 0;
            //attack animation;
        }
        else
        {
            
            //Tell our enemy move towards donald
            if ((x >= obj_donald.x))
            {
                //if we tell it to moveRight it will switch to move left
                 moveRight = 0;
                 moveLeft  = -1;
            }
            else if((x < obj_donald.x))
            {
                moveRight = 1;
                moveLeft  = 0;
            }
            if (alarm[0] = -1)
            {
                alarm[0] = timeToJump;
                jump = 0;
            }
            
            //reg move animation
            move = moveLeft + moveRight; //key_left is neg so we can add these to get net direction
            hsp  = move * movespeed;
            
            if (vsp < 10)
            {
                vsp += grav;
            }
            //Checking that we are against a wall, only going to jump against walls
            //Will need to this if adding platforms or make the second wall child?
            //May work
            if (place_meeting(x,y+1,obj_wall))
            {
                 vsp = jump * -jumpspeed; //Our jumpspeed is pos, but neg moves up
                //play jump sound
                if (!audio_is_playing(snd_jump_sound) && jump != 0) //check sound isnt playing
                {
                    //set our volume for this sound lower and play it
                    sound_volume(snd_jump_sound, 0.5);
                    audio_play_sound(snd_jump_sound,0,0);
                }
            }
            
            if (place_meeting(x,y+vsp, obj_wall))
            {   
                var counter = 0;
                while (place_meeting(x,y+sign(vsp), obj_wall))
                {
                     y -= sign(vsp);
                     counter += 1;
                     if (counter > 5)
                     {
                        x -= sign(hsp);
                     }
                }
                vsp = 0;
            }
            y += vsp + collJumpspeed;
            depth = -y + 1;

            //Horizontal Collision

            if (place_meeting(x+hsp,y, obj_wall))
            {
                while (place_meeting(x+sign(hsp),y,obj_wall))
                {
                    x -= sign(hsp)
                }
                hsp = 0;
            }
            x += hsp + collMovespeed;
        }
        //We tell the enemy close not to reset their timers until in range.
        
        //alarm[1] = -1;
}
else
{
    speed = 0;
    sprite_index = spr_enemy_hillary_still;
    //may want to move back to orig spot
    
}


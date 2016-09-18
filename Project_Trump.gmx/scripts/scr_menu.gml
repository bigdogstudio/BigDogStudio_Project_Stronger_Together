//Scr_menu
/*
menu[0] = "Start";
menu[1] = "Continue";
menu[2] = "Options";
menu[3] = "Quit :[ Don't Leave The Big Dog's So Soon!"
*/
switch (mpos)
{
    case 0:
    {
        //Start; lets go to the first room.
        //room_goto_next(); - Main Menu should take us to load out room
        room_goto(rm_world_select);
        break;
    }
    case 1:
    {
        //TODO load save game
        break;
    }
    case 2:
    {
        //TODO load our options menu; let user change sound etc.
        break;
    }
    case 3:
    {
        game_end();
        break;
    }
    default:
    {
        break;
    }    
}

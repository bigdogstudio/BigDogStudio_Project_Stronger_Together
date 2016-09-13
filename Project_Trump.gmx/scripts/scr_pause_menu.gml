//Scr_menu
/*
menu[0] = "Restart";
menu[1] = "Continue";
menu[2] = "Options";
menu[3] = "Quit :[ Don't Leave The Big Dog's So Soon!"
*/
switch (mpos)
{
    case 0:
    {
        //Restart; lets go to the first room.
        room_goto(room_first);
        showMenu = 0;
        break;
    }
    case 1:
    {
        //Continue Playing Game
        showMenu = 0;
        break;
    }
    case 2:
    {
        //TODO load our options menu; let user change sound etc.
        showMenu = 0;
        break;
    }
    case 3:
    {
        game_end();
        showMenu = 0;
        break;
    }
    default:
    {
        showMenu = 0;
        break;
    }    
}

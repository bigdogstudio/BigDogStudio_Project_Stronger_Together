//Scr_menu
/*
menu[0] = "Go To Main Menu";
menu[1] = "Restart";
menu[2] = "Continue";
menu[3] = "Options";
menu[4] = "Quit :[ Don't Leave The Big Dog's So Soon!"
*/
switch (mpos)
{
    case 0:
    {
        //Goto main menu; lets go to the first room.
        room_goto(room_first);
        global.pause = 0;
        global.points = 0;
        global.cash   = 0;
        showMenu = 0;
        break;
    }
    case 1:
    {
        //Restart; lets restart our room.
        room_restart();
        global.pause = 0;
        global.points = 0;
        global.cash   = 0;
        showMenu = 0;
        break;
    }
    case 2:
    {
        //Continue Playing Game
        showMenu = 0;
        global.pause = 0;
        break;
    }
    case 3:
    {
        //TODO load our options menu; let user change sound etc.
        showMenu = 0;
        global.pause = 0;
        break;    
    }
    case 4:
    {
        game_end();
        global.pause = 0;
        showMenu = 0;
        break;    
    }
    default:
    {
        global.pause = 0;
        showMenu = 0;
        break;
    }    
}

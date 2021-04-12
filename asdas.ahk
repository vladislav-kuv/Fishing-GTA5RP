#NoTrayIcon
#CommentFlag //
WinActivate Rage Multiplayer
Gui, Add, Button, x12 y9 w100 h30 gFishing , Hotkeys
Gui, Add, Button, x12 y49 w100 h30 gFAQ , FAQ
Gui, Add, Button, x292 y29 w120 h20 gDonate , Donate
Gui, Add, Button, x292 y9 w120 h20 gTelegram , Telegram
Gui, Add, Checkbox, x150 y20 w100 h30 gWorms, Червяки
Gui, Add, Checkbox, x150 y43 w100 h30 gSpeed, Медленно
Gui, Add, Link, x150 y71 w250 h30 , <a href="https://www.blast.hk/threads/50454/">Тема на форуме</a>
Gui, Show, w462 h100, GTA 5 RP Bot by Kadony
Gui, Color, 0xFFFFFF
return
F5:: Reload
F9:: Pause, Off
F8:: Pause, On
F7::
Loop{
        BlockInput, SendAndMouse
        SendInput, {sc17}
        sleep 2000
			Click Left 1494, 381
			sleep, 500
			Click Left 1494, %w% or 444
			BlockInput, Default
			x = 0
			flag = False
			while x = 0
				{
				PixelSearch, Px, Py, 641, 976, 668, 1037, 0x03FB99, 3, Fast
				if ErrorLevel = 0
						{   
							x = x + 1
						}
				else
					{
						if flag = True
						{
							Label30:
							PixelGetColor, color, 1372, 904, alt
							if ( color = 0x0000FF  )
							{
								Random, rand3, 15, 28
								Send {Click}
								sleep 100+rand3
								Send {Click}
								sleep 100+rand3
								Send {Click}
								sleep 100+rand3
								Send {Click}
								sleep 40+rand3
								Goto, Label30	
							} 
					
						}
						else
							{
								Label1:
								PixelGetColor, color, 1050, 899, alt
								if ( color = 0x0000FF  )
								{
									Loop 3
									{
										Send {Click}
										sleep 50
									}
									Goto, Label1
								}
							}		
                }
            }	
    }

return
Fishing:
	MsgBox, 0,, Activation: F7 | Pause ON: F8 | Pause OFF: F9 | Reload: F5
return
Worms:
	w = 489
return
Speed:
	flag = True
return
FAQ:
	Run, open "Tutorial.txt"
return
Telegram:
	Run https://t.me/Kovshik99
return
Donate:
	Run https://money.yandex.ru/to/410012664052438
return
GuiClose:
F2::
ExitApp
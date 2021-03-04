#NoTrayIcon
#CommentFlag //
WinActivate Rage Multiplayer
Gui, Add, Button, x12 y9 w100 h30 gFishing , Hotkeys
Gui, Add, Button, x12 y49 w100 h30 gFAQ , FAQ
Gui, Add, Button, x292 y29 w120 h20 gDonate , Donate
Gui, Add, Button, x292 y9 w120 h20 gTelegram , Telegram
Gui, Add, Checkbox, x150 y20 w100 h30 gWorms, Червяки
Gui, Add, Link, x150 y69 w250 h30 , <a href="https://www.blast.hk/threads/50454/">Тема на форуме</a>
Gui, Show, w462 h100, GTA 5 RP Bot by Kadony
Gui, Color, 0xFFFFFF
return
F5:: Reload
F9:: Pause, Off
F8:: Pause, On
F7::
Loop{
		Label1:
		BlockInput, SendAndMouse
		SendInput, {sc17}
		BlockInput, Default
		sleep 500
			BlockInput, SendAndMouse
			Click Left 1494, 381
			sleep, 500
			Click Left 1494, %f% or 444
			BlockInput, Default
			sleep, 5000
			Label2:
			PixelGetColor, color, 1050, 899, alt
			Var1 = %color%
			if ( Var1 = 0x0000FF  )
			{
				Loop 3
				{
					Send {Click}
					sleep 50
				}
				Goto, Label2
			}
			else
			{
				PixelSearch, Px, Py, 641, 976, 668, 1037, 0x03FB99, 3, Fast
				if ErrorLevel = 0
				{
					Goto, Label1
				}
				else
				{
					Goto, Label2
				}
			}
	}

return
Fishing:
	MsgBox, 0,, Activation: F7 | Pause ON: F8 | Pause OFF: F9 | Reload: F5
return
Worms:
	f = 489
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
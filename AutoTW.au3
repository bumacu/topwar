;~ Opt("MustDeclareVars", 1)
;~ #AutoIt3Wrapper_UseX64=y
;~ #AutoIt3Wrapper_Change2CUI=y
#RequireAdmin
#NoTrayIcon
#include <MsgBoxConstants.au3>

; Press Esc to terminate script, Pause/Break to "pause"

Global $g_bPaused = False
;~ HotKeySet("{9}","MyFuction3")   ;tat
;~ HotKeySet("{6}","MyFuction4")	; chi xoa
HotKeySet("{PAUSE}", "TogglePause")
HotKeySet("{ESC}", "Terminate")
HotKeySet("+!d", "ShowMessage") ; Shift-Alt-d

;~ HotKeySet("{SPACE}","MyFuction11") ; esit window    lenh hay
;~ HotKeySet("{2}","MyFuction2")	; , bua chien
;~ HotKeySet("{3}","MyFuction5")	; bc, xoa
;~ HotKeySet("{F4}","MyFuctio1") ; chuyen acc
;~ HotKeySet("{F5}","MyFuctio3") ; di tich
;~ HotKeySet("{1}","MyFuction10");only,delete
;~ HotKeySet("{0}","MyFuction6") ;no run auto
;~ HotKeySet("{F1}","MyFuctio2") ; 4 click
;~ HotKeySet("{F11}","MyFuctio7") ;reset game tw
;~ HotKeySet("{h}","MyFuctio8") ;thanh chinh
;~ HotKeySet("{b}","MyFuctio9") ;balo
;~ HotKeySet("{s}","MyFuctio10") ;shop
HotKeySet("{F6}","MyFuctio11") ; bc only

While 1
    Sleep(100)
WEnd

Func TogglePause()
    $g_bPaused = Not $g_bPaused
    While $g_bPaused
        Sleep(100)
        ToolTip('Script is "Paused"', 0, 0)
    WEnd
    ToolTip("")
EndFunc   ;==>TogglePause

Func Terminate()
Beep(9000,300)
    Exit
EndFunc   ;==>Terminate

Func ShowMessage()
    MsgBox($MB_SYSTEMMODAL, "", "This is a message.")
EndFunc   ;==>ShowMessage



#region Function
Func MyFuction11() ;close window
;balo
$pxs1 = PixelSearch( 509, 84, 509, 84, 0x96AFE2, 1, 1) ;
$pxs2 = PixelSearch( 518, 94, 518, 94, 0xA8BAF1, 1, 1) ;
;dau tap ket
$pxs3 = PixelSearch( 19, 97, 19, 97, 0xFFFFFF, 1, 1) ;
$pxs4 = PixelSearch( 9, 101, 9, 101, 0x5E7ECA, 1, 1) ;
;lm5
$pxs5 = PixelSearch( 843, 218, 843, 218, 0x97A4C6, 1, 1) ;lm5
$pxs6 = PixelSearch( 843, 220, 843, 220, 0x92A3D8, 1, 1) ;
;nhap de tiep tuc
$pxs6 = PixelSearch( 679, 437, 679, 437, 0xFFFFFF, 1, 1) ;
;lmtro giup
$pxs7 = PixelSearch( 844, 142, 844, 142, 0xA8BBE8, 1, 1) ;
;thu
$pxs8 = PixelSearch( 846, 140, 846, 140, 0x8DA3D9, 1, 1) ;
;~ hay1
$pxs9 = PixelSearch( 845, 516, 873, 591, 0x97A4C6, 1, 1) ;
$pxs10 = PixelSearch( 845, 516, 873, 591, 0x40435B, 1, 1) ;
;~ hay2
$pxs11 = PixelSearch( 762, 97, 874, 376, 0xA8BAE3, 10, 1) ;
$pxs12 = PixelSearch( 762, 97, 874, 376, 0xABBEE8, 10, 1) ;
;~ hay3
$pxs13 = PixelSearch( 486, 68, 543, 104, 0x90A0D8, 10, 1) ;
$pxs14 = PixelSearch( 486, 68, 543, 104, 0xA6B9F0, 10, 1) ;
;~ hay4
$pxs15 = PixelSearch( 858, 744, 858, 744, 0x43BC5B, 10, 1) ;
$pxs16 = PixelSearch( 851, 733, 851, 733, 0xFFFFFF, 10, 1) ;


;lenh nao dung ma duong truoc thi chay truoc
If isArray($pxs1) and isArray($pxs2)  Then ;
MouseClick("Left",507, 85,1,0) ; > close
 Beep(1900,100)
MouseMove (682, 349,1);
ElseIf isArray($pxs3) and isArray($pxs4)  Then ;
MouseClick("LEFT", 9, 101, 1, 0) ; return
Beep(1900,100)
ElseIf isArray($pxs5) and isArray($pxs6)  Then ;
MouseClick("LEFT", 843, 220, 1, 0) ; close 5
Beep(1900,100)
ElseIf isArray($pxs6)   Then ;
MouseClick("LEFT", 679, 437, 1, 0) ; tieptuc
Beep(1900,100)
ElseIf isArray($pxs7)   Then ;lm tro giup
MouseClick("LEFT", 844, 142, 1, 0) ;
Beep(1900,100)
ElseIf isArray($pxs8)   Then ;thu
MouseClick("LEFT", 844, 142, 1, 0) ;
Beep(1900,100)
ElseIf isArray($pxs15) and isArray($pxs16)  Then ;
MouseClick("LEFT", 502, 87, 1 ,0) ;close
Beep(1900,100)
ElseIf isArray($pxs9) and isArray($pxs10)  Then ;
MouseClick("LEFT", 843, 242, 1, 0) ; hay1
Beep(1900,100)
ElseIf isArray($pxs11) and isArray($pxs12)  Then ;
MouseMove($pxs11[0],$pxs11[1], 0);+15
MouseClick("Left") ; hay2
Beep(1900,100)
ElseIf isArray($pxs13) and isArray($pxs14)  Then ;
MouseMove($pxs13[0],$pxs13[1], 0);+15
MouseClick("Left") ; hay2
Beep(1900,100)




Else
MouseClick("LEFT", 502, 87, 1 ,0) ;close
EndIf
EndFunc
#endregion
While 1
   Sleep(300)
WEnd

;edit
; bua chien 2
   #region Function
Func MyFuction2()
   ProcessClose ("disF.exe")
      ProcessClose ("xoaF.exe")
	     ProcessClose ("bcF.exe")
		 ProcessClose ("btime.exe")
		    ProcessClose ("btime30.exe")
			ProcessClose ("battayF.exe")
			ProcessClose ("bcvxF.exe")
   Sleep(300)
    run("C:\TOPWAR\disF.exe")
    run("C:\TOPWAR\bcF.exe")
;~     run("C:\TOPWAR\bxoaF.exe")
;~    run("C:\TOPWAR\battayF.exe")
EndFunc
#endregion
While 1
   Sleep(300)
WEnd

 ;off bat tay bua chien off
   #region Function
Func MyFuction3()
   ProcessClose ("battayF.exe")
      ProcessClose ("xoaF.exe")
	     ProcessClose ("bcF.exe")
;~ 		    ProcessClose ("disF.exe")
;~ 			ProcessClose ("disF.exe")
			ProcessClose ("bcvxF.exe")
;~ 			ProcessClose ("btime.exe")
   Sleep(300)
   Beep(900,500)
;~     run("C:\TOPWAR\btime.exe")
;~       run("C:\TOPWAR\battayF.exe")
;~ 	   run("C:\TOPWAR\disF.exe")
EndFunc
#endregion
While 1
   Sleep(300)
WEnd


;xoa only 6 off
   #region Function
Func MyFuction4()
   ProcessClose ("battayF.exe")
      ProcessClose ("xoaF.exe")
	     ProcessClose ("bcF.exe")
;~ 		    ProcessClose ("disF.exe")
			ProcessClose ("battayF.exe")
			ProcessClose ("bcvxF.exe")
   Sleep(300)
;~     run("C:\TOPWAR\disF.exe")
;~     run("C:\TOPWAR\bcF.exe")
    run("C:\TOPWAR\bxoaF.exe")
EndFunc
#endregion

  #region Function
Func MyFuction5(); bc ,xoa tu dong 3
   ProcessClose ("battayF.exe")
      ProcessClose ("xoaF.exe")
	     ProcessClose ("bcF.exe")
		    ProcessClose ("disF.exe")
			ProcessClose ("bcvxFF.exe")
			ProcessClose ("berror.exe")
			ProcessClose ("btime.exe")
   Sleep(300)
;~    run("C:\TOPWAR\xoaF.exe")
    run("C:\TOPWAR\disF.exe")
	 run("C:\TOPWAR\bcvxF.exe"); chay moi truoc
      run("C:\TOPWAR\berror.exe")
	 Sleep(10000)
	 Beep(1000,100)
	 ProcessClose ("xoaF.exe")

EndFunc
#endregion
While 1
   Sleep(300)
WEnd

#region Function ; chuyen acc f4
Func MyFuctio1();
   MouseClick("LEFT", 38, 98, 1 ,1) ;
;1
 While 1
$pxt = PixelSearch( 740, 147, 740, 147, 0xDD2222, 2, 1)
Sleep(50)
$pxt1 = PixelSearch( 554, 272, 554, 272, 0x57E33A, 2, 1)
If isArray($pxt) Then ;
   MouseClick("LEFT", 560, 713, 1 ,1) ;cai dat
Sleep(500)
   MouseClick("LEFT", 807, 320, 1 ,2) ;ql nv
EndIf
If isArray($pxt1) Then ;
   MouseClick("LEFT", 553, 346, 1 ,1) ;acc
Sleep(500)
   MouseClick("LEFT", 676, 523, 1 ,2) ;xac nhan
Sleep(2500)
EndIf
WEnd
EndFunc
#endregion
While 3
   Sleep(100)
WEnd

#region Function ; di tich
Func MyFuctio3();
   MouseClick("LEFT", 1330, 538, 1 ,1) ;
      	Sleep(500)
   MouseClick("LEFT", 757, 397, 1 ,1) ;
Sleep(500)
   MouseClick("LEFT", 803, 138, 1 ,2) ;
   Sleep(5000)
EndFunc
#endregion


#region Function ; f1 4 click
Func MyFuctio2();
$pxs = PixelSearch( 30, 96, 30, 96, 0xFFFFFF, 1, 1) ;0x57C553
$pxs1 = PixelSearch( 6, 99, 6, 99, 0x5E7ECA, 1, 1) ;
If isArray($pxs) and isArray($pxs1)  Then ;
MouseClick("Left",906, 655,1,0) ; doi 1
 Beep(1900,100)
MouseMove (682, 349,1); ra tran

Else ; 4 click
   MouseClick("LEFT", Default, Default, 1, 10) ;
;~     Sleep(300)
;~   MouseClick("LEFT", Default, Default, 1, 10) ;
;~    Sleep(300)
;~    MouseClick("LEFT", Default, Default, 1 ,10) ;
;~     Sleep(300)
;~     MouseClick("LEFT", Default, Default, 1, 10) ;
;~ 	Sleep(300)
;~     MouseClick("LEFT", Default, Default, 1, 10) ;
;~    Sleep(300)
;~    MouseClick("LEFT", Default, Default, 1 ,10) ;
;~     Sleep(300)
;~     MouseClick("LEFT", Default, Default, 1, 10) ;
;~ 	Sleep(300)
;~     MouseClick("LEFT", Default, Default, 1, 10) ;
	Sleep(1500)
 EndIf

EndFunc
#endregion
While 1
   Sleep(300)
WEnd

;onlydelete 1
#region Function
Func MyFuction10()
  	 ProcessClose ("bxoaF.exe")
	 ProcessClose ("btime.exe")
	 ProcessClose ("berror")
	  Sleep(300)
run("C:\TOPWAR\bxoaFF.exe"); moi truoc
;~ run("C:\TOPWAR\xoaF.exe")
run("C:\TOPWAR\berror.exe")
Sleep(10000)
Beep(1000,100)
ProcessClose ("xoaF.exe")
EndFunc
#endregion
While 1
   Sleep(300)
WEnd


;exit hotkey 0
#region Function
Func MyFuction6()
ProcessClose ("disauto.exe")
ProcessClose ("onlybc.exe")
ProcessClose ("disF.exe")
ProcessClose ("ingameF.exe")
ProcessClose ("ingameF.exe")
ProcessClose ("bcvxF.exe")
ProcessClose ("battayF.exe")
ProcessClose ("bxoaFF.exe")
ProcessClose ("ingameF.exe")
ProcessClose ("xoaF.exe")
ProcessClose ("bxoaF.exe")
ProcessClose ("bcF.exe")
ProcessClose ("btime30.exe")
ProcessClose ("ingameF.exe")
ProcessClose ("battayF.exe")
ProcessClose ("bcvxFF.exe")
ProcessClose ("bcvxFF.exe")
ProcessClose ("disF.exe")
ProcessClose ("btime.exe")
ProcessClose ("hotkeyF.exe")
ProcessClose ("btime30.exe")
ProcessClose ("hotkeyF.exe")
ProcessClose ("ingameF.exe")
ProcessClose ("btime.exe")
ProcessClose ("berror.exe")
MouseClick ("left",536, 100,1,0) ;thoattapketkhidis
;~ MouseClick("LEFT", 518, 76, 1 ,0) ; exit cuoi cung ok
 Sleep(30)
run("C:\TOPWAR\ingameF.exe")
run("C:\TOPWAR\disF.exe")
EndFunc
#endregion
While 1
   Sleep(300)
WEnd

;reset game tw
#region Function
Func MyFuctio7()
Beep(900,300)
run("C:\TOPWAR\btime.exe")
EndFunc
#endregion
While 1
   Sleep(300)
WEnd

;thanh chinh
#region Function
Func MyFuctio8()
Beep(900,300)
MouseClick("LEFT", 842, 713, 1 ,0) ;
EndFunc
#endregion
While 1
   Sleep(300)
WEnd

;balo
#region Function
Func MyFuctio9()
Beep(900,300)
MouseClick("LEFT", 1325, 656, 1 ,0) ;
EndFunc
#endregion
While 1
   Sleep(300)
WEnd

;shop
#region Function
Func MyFuctio10()
Beep(900,300)
MouseClick("LEFT", 508, 653, 1 ,3) ;
MouseClick("LEFT", 782, 519, 1 ,3) ;
MouseClick("LEFT", 512, 224, 1 ,3) ;
EndFunc
#endregion
While 1
   Sleep(300)
WEnd

#region Function ; bc only
Func MyFuctio11();
   ;1
 Beep(900,300)
 While 1
;phat hien
$pxs = PixelSearch( 1275, 538, 1290, 582, 0x54C250, 5, 1) ;0x57C553
Sleep(10)
$pxs1 = PixelSearch( 1275, 538, 1290, 582, 0x50BF4A, 5, 1)
;vao tran
$pxt = PixelSearch( 844, 128, 845, 587, 0xF5F5F6, 5, 1);0xFDFDFD
Sleep(10)
$pxt1 = PixelSearch( 844, 128, 845, 587, 0xFDFDFD, 5, 1)
Sleep(10)
$pxt2 = PixelSearch( 664, 96, 664, 96, 0xFCFCFD, 5, 1)
;not run
;~ Sleep(50)
$pxt3 = PixelSearch( 674, 96, 674, 96, 0xFDFDFD, 2, 1)
Sleep(10)
$pxt4 = PixelSearch( 664, 96, 664, 96, 0xFCFCFD, 1, 1)

If isArray($pxs) and isArray($pxs1)  Then ;phat hien
MouseClick("Left",1275, 538,2,0) ;
Beep(390,100)
Sleep(200)
EndIf
;vao tran
If isArray($pxt) and isArray($pxt1) and isArray($pxt2)  Then ;
   ProcessClose ("disF.exe")
   Sleep(300)
   run("C:\TOPWAR\disF.exe")
Beep(9000,300)
MouseClick ("left" ,527, 534, 1,0); o them quan luon5
Sleep(110)
MouseClick ("left" ,531, 403, 1,0); o them quan luon3
Sleep(500)
MouseClick ("left" ,573, 723, 1,0); chon linh luon
Sleep(550)
MouseClick ("left" ,670, 350, 1,0); chon dau
;~ Beep(9000,300)
;~ Sleep(1250)
;qua so quan
;~ MouseClick ("left" ,16, 97, 1,0); return
;~ Sleep(210)
;~ MouseClick ("left" ,513, 84, 1,0); thoat tap ket1
;~ Sleep(210)
;~ MouseClick ("left" ,726, 475, 1,0); ok
;~ Sleep(210)
;~ MouseClick ("left" ,513, 84, 1,0); thoat tap ket2
EndIf

;not run
If isArray($pxt3) and isArray($pxt4)   Then ;
Sleep(500)
MouseClick ("left" ,513, 84, 1,0); thoat tap ket2
Sleep(2100)
EndIf
WEnd
EndFunc
#endregion

While 3
   Sleep(500)
WEnd

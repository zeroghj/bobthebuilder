   ; Menu
; 1.0 Code
   ; 1.1 Variables
   ; 1.2 Short Functions
   ; 1.3 Main Functions
	  ; 1.3.1 MainLoop Function
	  ; 1.3.2 Brick function
   ; 1.4 Menu Function
	  ; 1.4.1 Menu1
	  ; 1.4.2 Menu2
; 2.0 GUI
   ;2.1 GUI form
   ;2.2 OnEvent Programing


; 1.0 CODE PART OF CODE
; 1.1 Variables
Global $Cycle_Time=30000
Global $Option=0
Global $walk=false
Global $looping=false
Global $binded=false
Global $Counting=False
Global $time_count=0
Global $limit=false
Global $time = TimerInit()
Global $tt1 = TimerDiff($time)
Global $tt2 = TimerDiff($time)
Global $bposx=275
Global $bposy=185
Global $pointx=0
Global $pointy=0
Global $creationmenu1=1
Global $creationmenu2=1
Global $uposx=540
Global $uposy=312
AutoItSetOption("MouseCoordMode",0)
; 1.2 Short Functions
Func setCycle($a)
   $Cycle_time=($a*1000)
EndFunc
Func dis()
   $walk=false
	  GUICtrlSetState($Radio13,$GUI_Disable)
	  GUICtrlSetState($Radio14,$GUI_Disable)
EndFunc
Func ena()
   	  GUICtrlSetState($Radio13,$GUI_Enable)
	  GUICtrlSetState($Radio14,$GUI_Enable)
EndFunc
Func setOption($a)
   $Option=$a
   $binded=false
EndFunc
Func setOn()
   $looping=True
EndFunc
Func setOff()
   $looping=false
EndFunc
Func setlimit($a)
   if ($a==0)OR($a=="") Then
   $limit=false
Else
   $time_count=$a
   $limit=True
   if Not($Counting) Then
   $tt1 = TimerDiff($time)
	endif  
   ENdif
EndFunc

Func WalkSet($a)
   $walk=$a
EndFunc
Func setmenu1($a)
   $creationmenu1 = $a
EndFunc
Func setmenu2($a)
   $creationmenu2 = $a
EndFunc
Func setbulkX($a)
   $bposx = $a
EndFunc
Func setbulkY($a)
   $bposy = $a
EndFunc
Func setuserX($a)
   $uposx = $a
EndFunc
Func setuserY($a)
   $uposy = $a
EndFunc
Func BossCount()
   if ($limit) Then
   	  if ($time_count>0)AND($Counting) Then
		 $time_count = $time_count - 1
	  ENDif
	  if($time_count<1) Then
		 $looping=False
	  EndIf
	  if ($time_count>0)AND NOT($Counting) Then
		 $tt2 = TimerDiff($time)
		 $time_count = (($tt2 - $tt1)/1000)
	  ENDif
   EndIf
EndFunc
; 1.3 Main Function
; 1.3.1 MainLoop Function
Func Looptime()
   while ($looping)
	  sleep(5000+Random(0,1000))
	  if ($walk AND $looping) Then
		 Send("{w down}")
		 sleep(1000+Random(0,500))
		 Send("{w up}")
	  EndIf
	  Switch $Option
	  Case 1
		 For $i =0 to 5
			if($looping) Then
			   if (NOT($binded)) Then
				  send("{F1}")
				  send("bind 1 mine_forward")
				  send("{F1}")
				  $binded=True
			   EndIf
			   Send("1")
			   Call("BossCount")
			   sleep($Cycle_time + Random(0,1000))
			EndIf
		 Next
	  Case 2
		 For $i =0 to 5
			if($looping) Then
			   if (NOT($binded)) Then
				  send("{F1}")
				  send("bind 1 fish")
				  send("{F1}")
				  $binded=True
			   EndIf
			   Send("1")
			   Call("BossCount")
			   sleep(Random(0,20000))
			EndIf
		 Next
	  Case 3
		 For $i =0 to 5
			if($looping) Then
			   if (NOT($binded)) Then
				  send("{F1}")
				  send("bind 1 track")
				  send("{F1}")
				  $binded=True
			   EndIf
			   Send("1")
			   Call("BossCount")
			   sleep($Cycle_time + Random(0,1000))
			EndIf
		 Next
	  Case 4
		 Call("Bricking")
	  
	  Endswitch
   WEnd
Endfunc
;1.3.2 Brick Function ## will become the creation function ##
Func Bricking()
BlockInput(1)
$pointx = $uposx
$pointy = $uposy
MouseClickDrag("left",$bposx,$bposy,$pointx,$pointy)
   sleep(1000  + Random(0,1000))
   Send(($Cycle_time)/1000)
   Send("{Enter}")
   sleep(1000  + Random(0,1000))
   MouseClickDrag("left",$pointx,$pointy,($pointx-60),($pointy-170))
   $pointx += -60
   $pointy += -170
   sleep(1000  + Random(0,1000))
   MouseClick("right")
   $pointx += 20
   $pointy += 58
   MouseMove($pointx,$pointy)
   Sleep(1000  + Random(0,1000))
   $pointx += -65
   MouseMove($pointx,$pointy)
   Sleep(500  + Random(0,250))
   Call("Menu1")
   MouseMove($pointx,$pointy)
   Sleep(500  + Random(0,250))
	  $pointx += +65
   MouseMove($pointx,$pointy)
   Call("Menu2")
   MouseMove($pointx,$pointy)
   Sleep(500  + Random(0,250))
   MouseClick("left")
   BlockInput(0)
   Sleep(35000  + Random(0,3000))
   if ($looping) then
   BlockInput(1)
   $pointx += 165
   $pointy += -173
   MouseMove($pointx,$pointy)
   MouseClick("left")
   Sleep(500 + Random(0,250))
   $pointy += 12
   MouseMove($pointx,$pointy)
   Sleep(500 + Random(0,250))
   Send("{LShift down}")
   Sleep(500 + Random(0,250))
   MouseClick("left")
   Sleep(500 + Random(0,250))
   Send("{LShift up}")
   Sleep(500 + Random(0,250))
   $pointy += -12
   MouseClickDrag("left",$uposx,($uposy),$bposx,$bposy)
   BlockInput(0)
   endif
EndFunc
;1.4 Menu Functions
   ;1.4.1 Menu1
   Func Menu1 ()
	  
	  switch $creationmenu1
		 case 1
		 case 2
			$pointy +=10
		 case 3
			$pointy += 20
		 case 4
			$pointy += 30
		 case 5
			$pointy += 40
		 case 6
			$pointy += 50
		 case 7
			$pointy += 60
	  Endswitch
   EndFunc
   ;1.4.2 Menu2
   Func Menu2 ()
	  switch $creationmenu2
		 case 1
		 case 2
			$pointy +=5
		 case 3
			$pointy +=10
		 case 4
			$pointy +=15
		 case 5
			$pointy +=20
		 case 6
			$pointy +=25
		 case 7
			$pointy +=30
		 case 8
			$pointy +=35
   Endswitch
   EndFunc
; 2.0 GUI PART OF CODE
#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <TabConstants.au3>
#include <WindowsConstants.au3>
Opt("GUIOnEventMode", 1)  ; Change to OnEvent mode 
;2.1 GUI form
#Region ### START Koda GUI section ### Form=c:\users\zeroghj\desktop\vincent\workspace\autoit\koda\forms\form1.kxf
$Form1_1 = GUICreate("Bob The Builder v1.03", 347, 246, 239, 175)
$TabPoint1 = GUICtrlCreateTab(0, 0, 345, 241)
$TabSheet1 = GUICtrlCreateTabItem("Point and Click")
$Group6 = GUICtrlCreateGroup("", 4, 33, 105, 121)
$Radio9 = GUICtrlCreateRadio("Mining", 28, 49, 57, 17)
$Radio10 = GUICtrlCreateRadio("Fishing", 28, 73, 57, 17)
$Radio11 = GUICtrlCreateRadio("Tracking", 28, 97, 65, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group7 = GUICtrlCreateGroup("", 116, 33, 225, 49)
$Label1 = GUICtrlCreateLabel("Auto_Walk", 124, 49, 57, 17)
$Radio13 = GUICtrlCreateRadio("On", 188, 49, 41, 17)
$Radio14 = GUICtrlCreateRadio("Off", 236, 49, 65, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group8 = GUICtrlCreateGroup("", 116, 89, 225, 65)
$Label3 = GUICtrlCreateLabel("Cycle Time", 132, 105, 56, 17)
$Input2 = GUICtrlCreateInput("Insert Cycle Time", 204, 105, 121, 21)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group9 = GUICtrlCreateGroup("", -4, 193, 345, 57)
$Button3 = GUICtrlCreateButton("Start", 60, 209, 75, 25)
$Button4 = GUICtrlCreateButton("Stop", 172, 209, 75, 25)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group10 = GUICtrlCreateGroup("", 4, 153, 345, 49)
$inputlimit=GUICtrlCreateInput("", 212, 169, 121, 21)
$Radio15 = GUICtrlCreateRadio("Time Limit", 20, 177, 73, 17)
$Radio16 = GUICtrlCreateRadio("Cycle Limit", 108, 177, 81, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$TabSheet2 = GUICtrlCreateTabItem("Creation")
$Group1 = GUICtrlCreateGroup("Menu Selection", 8, 32, 129, 113)
$Label2 = GUICtrlCreateLabel("Menu1", 16, 48, 37, 17)
$Label4 = GUICtrlCreateLabel("Menu2", 16, 72, 37, 17)
$InpMenu1=GUICtrlCreateInput("1", 88, 48, 41, 21)
$InpMenu2=GUICtrlCreateInput("1", 88, 72, 41, 21)
$Label6 = GUICtrlCreateLabel("UserMenuX", 16, 96, 60, 17)
$InpUMenX=GUICtrlCreateInput("540", 88, 96, 41, 21)
$Label7 = GUICtrlCreateLabel("UserMenuY", 16, 120, 60, 17)
$InpUMenY=GUICtrlCreateInput("312", 88, 120, 41, 21)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group2 = GUICtrlCreateGroup("", 140, 81, 201, 57)
$Label5 = GUICtrlCreateLabel("Cycle Time", 148, 97, 56, 17)
$Input1 = GUICtrlCreateInput("Insert Cycle Time", 212, 97, 121, 21)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group3 = GUICtrlCreateGroup("", 4, 137, 345, 49)
$InpLimit2 =GUICtrlCreateInput("", 212, 153, 121, 21)
$Radio1 = GUICtrlCreateRadio("Time Limit", 12, 153, 73, 17)
$Radio2 = GUICtrlCreateRadio("Cycle Limit", 108, 153, 81, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group4 = GUICtrlCreateGroup("", 4, 185, 345, 57)
$Button1 = GUICtrlCreateButton("Start", 68, 201, 75, 25)
$Button2 = GUICtrlCreateButton("Stop", 180, 201, 75, 25)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group5 = GUICtrlCreateGroup("Bulk X, Y", 140, 33, 201, 49)
$InpBulkX=GUICtrlCreateInput("275", 160, 48, 57, 21)
$InpBulkY=GUICtrlCreateInput("185", 224, 48, 65, 21)
GUICtrlCreateGroup("", -99, -99, 1, 1)
GUICtrlCreateTabItem("")
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

;2.2 OnEvent Programing
GUISetOnEvent($GUI_EVENT_CLOSE, "CLOSEClicked")
GUICtrlSetOnEvent($Radio9, "Mine1")
GUICtrlSetOnEvent($Radio10, "Fish2")
GUICtrlSetOnEvent($Radio11, "Track3")
GUICtrlSetOnEvent($Radio13, "Walkon")
GUICtrlSetOnEvent($Radio14, "Walkoff")
GUICtrlSetOnEvent($Input2, "cyclez")
GUICtrlSetOnEvent($Button3, "son")
GUICtrlSetOnEvent($Button4, "soff")
GUICtrlSetOnEvent($Radio15, "ltime")
GUICtrlSetOnEvent($Radio16, "lcount")
GUICtrlSetOnEvent($inputlimit, "lset")
GUICtrlSetOnEvent($InpMenu1, "menuone")
GUICtrlSetOnEvent($InpMenu2, "menutwo")
GUICtrlSetOnEvent($Input1, "cyclez")
GUICtrlSetOnEvent($Radio1, "ltime")
GUICtrlSetOnEvent($Radio2, "lcount")
GUICtrlSetOnEvent($Button1, "son2")
GUICtrlSetOnEvent($Button2, "soff")
GUICtrlSetOnEvent($InpLimit2, "lset")
GUICtrlSetOnEvent($InpUMenX, "userX")
GUICtrlSetOnEvent($InpUMenY, "userY")
GUICtrlSetOnEvent($InpBulkX, "bulkX")
GUICtrlSetOnEvent($InpBulkY, "bulkY")
Func CLOSEClicked()
   Exit
EndFunc
Func Mine1()
	  Call("setOption", 1)
	  Call("ena")
EndFunc
Func Fish2()
	  Call("setOption", 2)
	  Call("ena")
EndFunc
Func Track3()
	  Call("setOption", 3)
	  Call("ena")
   EndFunc
Func Walkon()
	  Call("WalkSet", true)
EndFunc
Func Walkoff()
	  Call("WalkSet", false)
EndFunc
Func cyclez()
	  call("setCycle",GUICTrlRead($Input1))
EndFunc
Func son()
	  call("lset")
	  call("setOn")
EndFunc
Func son2()
	  call("lset")
	  call("setOn")
	  call("setOption", 4)
EndFunc
Func soff()
	  call("setOff")
EndFunc
Func ltime()
	  $Counting=false
EndFunc
Func lcount()
	  $Counting=true
EndFunc
Func lset()
	  Call("setLimit",GUICTrlRead($Input2))
EndFunc
Func menuone()
	  Call("setmenu1",GUICTrlRead($InpMenu1))
EndFunc
Func menutwo()
	  Call("setmenu2",GUICTrlRead($InpMenu2))
EndFunc
Func bulkX()
	  Call("setbulkX",GUICTrlRead($InpBulkX))
EndFunc
Func bulkY()
	  Call("setbulkY",GUICTrlRead($InpBulkY))
EndFunc 
Func userX()
	  Call("setuserX",GUICTrlRead($InpUMenuX))
EndFunc 
Func userY()
	  Call("setuserY",GUICTrlRead($InpUMenuY))
EndFunc
While 1
	   Call("Looptime")

WEnd


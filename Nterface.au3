   ; Menu
; 1.0 Code
   ; 1.1 Variables
   ; 1.2 Short Functions
   ; 1.3 Main Functions
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
AutoItSetOption("MouseCoordMode",0)
; 1.2 Short Functions
Func captureEsc()
   $looping=false
Endfunc
Func setCycle($a)
   $Cycle_time=($a*1000)
EndFunc
Func dis()
   $walk=false
	  GUICtrlSetState($Radio4,$GUI_Disable)
	  GUICtrlSetState($Radio5,$GUI_Disable)
EndFunc
Func ena()
   	  GUICtrlSetState($Radio4,$GUI_Enable)
	  GUICtrlSetState($Radio5,$GUI_Enable)
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
;1.4 Brick Function
Func Bricking()
BlockInput(1)
MouseClickDrag("left",275,185,540,312)
   sleep(1000)
   Send(($Cycle_time)/1000)
   Send("{Enter}")
   sleep(1000)
   MouseClick("right")
   MouseMove(560,375)
   Sleep(1000)
   MouseMove(495,375)
   Sleep(500)
   MouseMove(495,405)
   Sleep(500)
   MouseMove(375,405)
   Sleep(500)
   MouseClick("left")
   BlockInput(0)
   Sleep(40000)
   if ($looping) then
   BlockInput(1)
   MouseMove(540,312)
   MouseClick("left")
   Sleep(500)
   MouseMove(540,330)
   Sleep(500)
   Send("{LShift down}")
   Sleep(500)
   MouseClick("left")
   Sleep(500)
   Send("{LShift up}")
   Sleep(500)
   MouseClickDrag("left",540,330,275,185)
   BlockInput(0)
   endif
EndFunc
; 2.0 GUI PART OF CODE
#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
Opt("GUIOnEventMode", 1)  ; Change to OnEvent mode 
;2.1 GUI form
#Region ### START Koda GUI section ### Form=c:\users\zeroghj\desktop\vincent\workspace\autoit\koda\forms\form1.kxf
$Form1_1 = GUICreate("Bob The Builder v1.01", 347, 246, 238, 136)
$Group1 = GUICtrlCreateGroup("", 0, 8, 105, 121)
$Radio1 = GUICtrlCreateRadio("Mining", 24, 24, 57, 17)
$Radio2 = GUICtrlCreateRadio("Fishing", 24, 48, 57, 17)
$Radio3 = GUICtrlCreateRadio("Tracking", 24, 72, 65, 17)
$Radio8 = GUICtrlCreateRadio("Brick", 24, 96, 113, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group2 = GUICtrlCreateGroup("", 112, 8, 225, 49)
$Auto_Walk = GUICtrlCreateLabel("Auto_Walk", 120, 24, 57, 17)
$Radio4 = GUICtrlCreateRadio("On", 184, 24, 41, 17)
$Radio5 = GUICtrlCreateRadio("Off", 232, 24, 65, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group3 = GUICtrlCreateGroup("", 112, 64, 225, 65)
$Label2 = GUICtrlCreateLabel("Cycle Time", 128, 80, 56, 17)
$Input1 = GUICtrlCreateInput("Insert Cycle Time", 200, 80, 121, 21)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group4 = GUICtrlCreateGroup("", 0, 176, 345, 57)
$Button1 = GUICtrlCreateButton("Start", 64, 192, 75, 25)
$Button2 = GUICtrlCreateButton("Stop", 176, 192, 75, 25)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group5 = GUICtrlCreateGroup("", 0, 128, 345, 49)
$Input2 = GUICtrlCreateInput("", 208, 144, 121, 21)
$Radio6 = GUICtrlCreateRadio("Time Limit", 16, 152, 73, 17)
$Radio7 = GUICtrlCreateRadio("Cycle Limit", 104, 152, 81, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

;2.2 OnEvent Programing
GUISetOnEvent($GUI_EVENT_CLOSE, "CLOSEClicked")
GUICtrlSetOnEvent($Radio1, "Mine1")
GUICtrlSetOnEvent($Radio2, "Fish2")
GUICtrlSetOnEvent($Radio3, "Track3")
GUICtrlSetOnEvent($Radio4, "Walkon")
GUICtrlSetOnEvent($Radio5, "Walkoff")
GUICtrlSetOnEvent($Input1, "cyclez")
GUICtrlSetOnEvent($Button1, "son")
GUICtrlSetOnEvent($Button2, "soff")
GUICtrlSetOnEvent($Radio6, "ltime")
GUICtrlSetOnEvent($Radio7, "lcount")
GUICtrlSetOnEvent($Input2, "lset")
GUICtrlSetOnEvent($Radio8, "brick4")
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
Func brick4()
	  Call("setOption", 4)
	  Call("dis")
EndFunc
While 1
	   Call("Looptime")

WEnd

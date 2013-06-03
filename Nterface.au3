;Version 1.06
; Menu
; 1.0 BackEnd
   ; 1.1 Variables
   ; 1.2 Short Functions
   ; 1.3 Main Functions
	  ; 1.3.1 MainLoop Function
	  ; 1.3.2 Creation function
; 2.0 GUI
   ;2.1 GUI form
	  ;2.1.1 Tab Point and Click
		 ;2.1.1a Options
		 ;2.1.1b Walk Options
		 ;2.1.1c Cycle Time
		 ;2.1.1d Start/Stop
		 ;2.1.1e Limit Options
	  ;2.1.2 Creation
		 ;2.1.2a Settings
		 ;2.1.2b Cycle Options
		 ;2.1.2c Limit
		 ;2.1.2d Start/Stop
		 ;2.1.2e Actions
   ;2.2 OnEvent Programing
	  ;2.2.1 Tab 1 Point and Click
	  ;2.2.2 Tab 2 Creation
	  ;2.2.3 Tab 3 Creation Setting
   ;2.3 OnEvent Functions


; 1.0 BackEnd part of the code
; 1.1 Variables

Global $Cycle_Time=30000
Global $CreationCount = 1
Global $Iteration =1
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
Global $posx=0
Global $posy=0
Global $posx1=0
Global $posy1=0
Global $posx2=0
Global $posy2=0
Global $posx3=0
Global $posy3=0
Global $posx4=0
Global $posy4=0
Global $posx5=0
Global $posy5=0
Global $posx6=0
Global $posy6=0
Global $finalitembulk=2
Global $lumptimer=0
Global $state=0
; 1.2 Short Functions
Func setCycle($a)
   $Cycle_time=($a*1000)
EndFunc
Func dis()
   $walk=false
	  GUICtrlSetState($RadioAutoWalkOnPointclick,$GUI_Disable)
	  GUICtrlSetState($Radioauto_walkoffpointclick,$GUI_Disable)
EndFunc
Func ena()
   	  GUICtrlSetState($RadioAutoWalkOnPointclick,$GUI_Enable)
	  GUICtrlSetState($Radioauto_walkoffpointclick,$GUI_Enable)
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
Func setcreationcount($a)
   $CreationCount = $a
EndFunc
Func setiterationcount($a)
   $Iteration = $a
EndFunc
Func finalitembulk($a)
   $finalitembulk = $a
EndFunc
Func takeposition ()
   $posx = MouseGetPos(0)
   $posy = MouseGetPos(1)
EndFunc

Func positionset1 ()
   $posx1 = $posx
   $posy1 = $posy
EndFunc
Func positionset2 ()
   $posx2 = $posx
   $posy2 = $posy
EndFunc
Func positionset3 ()
   $posx3 = $posx
   $posy3 = $posy
EndFunc
Func positionset4 ()
   $posx4 = $posx
   $posy4 = $posy
EndFunc
Func positionset5 ()
   $posx5 = $posx
   $posy5 = $posy
EndFunc
Func positionset6 ()
   $posx6 = $posx
   $posy6 = $posy
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
				  sleep(1000)
				  send("{Enter}")
				  send("{F1}")
				  $binded=True
			   EndIf
			   Send("1")
			   ;Call("BossCount")
			   sleep($Cycle_time + Random(0,1000))
			EndIf
		 Next
	  Case 2
		 For $i =0 to 5
			if($looping) Then
			   if (NOT($binded)) Then
				  send("{F1}")
				  send("bind 1 fish")
				  sleep(1000)
				  send("{Enter}")
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
				  send("bind 1 dig")
				  sleep(1000)
				  send("{Enter}")
				  send("{F1}")
				  $binded=True
			   EndIf
			   Send("1")
			   Call("BossCount")
			   sleep($Cycle_time + Random(0,1000))
			EndIf
		 Next
	  Case 4
		 Call("Creation")

	  	  Case 5
		 For $i =0 to 5
			if($looping) Then
			   if (NOT($binded)) Then
				  WinActivate("Wurm Online 3.1.77-4859", "")
				  WinWaitActive("Wurm Online 3.1.77-4859")
				  send("{F1}")
				  send("bind 1 IMPROVE")
				  sleep(1000)
				  send("{Enter}")
				  sleep(1000)
				  send("{Enter}")
				  send("bind 2 REPAIR")
				  sleep(1000)
				  send("{Enter}")
				  sleep(1000)
				  send("{Enter}")
				  send("bind o ACTIVATE_TOOL1")
				  sleep(1000)
				  send("{Enter}")
				  sleep(1000)
				  send("{Enter}")
				  send("bind p ACTIVATE_TOOL2")
				  sleep(1000)
				  send("{Enter}")
				  sleep(1000)
				  send("{Enter}")
				  send("bind k ACTIVATE_TOOL3")
				  sleep(1000)
				  send("{Enter}")
				  sleep(1000)
				  send("{Enter}")
				  send("bind l ACTIVATE_TOOL4")
				  sleep(1000)
				  send("{Enter}")
				  sleep(1000)
				  send("{Enter}")
				  send("bind m ACTIVATE_TOOL5")
				  sleep(1000)
				  send("{Enter}")
				  sleep(1000)
				  send("{Enter}")
				  send("bind j ACTIVATE_TOOL6")
				  sleep(1000)
				  send("{Enter}")
				  send("{F1}")
				  $binded=True
			   EndIf
			   Beep()
			   sleep(1000)
			   $state = WinGetState("Wurm Online 3.1.77-4859", "")
			   WinActivate("Wurm Online 3.1.77-4859", "")
			   WinWaitActive("Wurm Online 3.1.77-4859")
			   BlockInput(1)
			   If ($lumptimer > 20) Then
				  ControlSend("Wurm Online 3.1.77-4859", "", "", "{ESC}")
				  Sleep(100)
				  MouseClickDrag("left",$posx6,$posy6,$posx1,$posy1)
				  Sleep(100)
				  MouseClickDrag("left",$posx3,$posy3,$posx6,$posy6)
				  $lumptimer = 0
			   EndIf  
			   MouseMove($posx1,$posy1)
			   ControlSend("Wurm Online 3.1.77-4859", "", "", "o")
			   sleep(100)
			   ControlSend("Wurm Online 3.1.77-4859", "", "", "1")
			   sleep(100)
			   ControlSend("Wurm Online 3.1.77-4859", "", "", "p")
			   sleep(100)
			   ControlSend("Wurm Online 3.1.77-4859", "", "", "1")
			   sleep(100)
			   ControlSend("Wurm Online 3.1.77-4859", "", "", "k")
			   sleep(100)
			   ControlSend("Wurm Online 3.1.77-4859", "", "", "1")
			   sleep(100)
			   ControlSend("Wurm Online 3.1.77-4859", "", "", "l")
			   sleep(100)
			   ControlSend("Wurm Online 3.1.77-4859", "", "", "1")
			   sleep(100)
			   ControlSend("Wurm Online 3.1.77-4859", "", "", "m")
			   sleep(100)
			   ControlSend("Wurm Online 3.1.77-4859", "", "", "1")
			   sleep(100)
			   ControlSend("Wurm Online 3.1.77-4859", "", "", "j")
			   sleep(100)
			   ControlSend("Wurm Online 3.1.77-4859", "", "", "1")
			   sleep(100)
			   ControlSend("Wurm Online 3.1.77-4859", "", "", "2")
			   sleep(100)
			   BlockInput(0)
			   $lumptimer = $lumptimer + 1
			   If (NOT($state = 8)) Then
			    WinSetState("Wurm Online 3.1.77-4859", "", @SW_MINIMIZE)
			   EndIf
			   Call("BossCount")
			   sleep($Cycle_time + Random(0,1000))
			EndIf
		 Next
		 
	  Endswitch
   WEnd
Endfunc
;1.3.2 Creation Function
Func Creation()
   sleep(100  + Random(0,1000))
   $iterate=0
BlockInput(1)
MouseClickDrag("left",$posx1,$posy1,$posx6,$posy6)
   sleep(1000  + Random(0,1000))
   Send($CreationCount)
   Send("{Enter}")
   BlockInput(0)
   sleep(1000  + Random(0,1000))
   While ($iterate <$iteration)
	  BlockInput(1)
	  sleep(100  + Random(0,1000))
	  MouseMove($posx6,$posy6)
	  sleep(1000  + Random(0,1000))
	  MouseClick("right")
	  sleep(1000  + Random(0,1000))
	  MouseMove($posx3,$posy3)
	  Sleep(1000  + Random(0,1000))
	  MouseMove($posx4,$posy3)
	  Sleep(1000  + Random(0,1000))
	  MouseMove($posx4,$posy4)
	  Sleep(500  + Random(0,250))
	  MouseMove($posx5,$posy4)
	  Sleep(500  + Random(0,250))
	  MouseMove($posx5,$posy5)
	  Sleep(500  + Random(0,250))
	  MouseClick("left")
	  BlockInput(0)
	  Sleep($Cycle_Time  + Random(0,3000))
	  $iterate= $iterate+1
   Wend
   if ($looping) then
	  sleep(100  + Random(0,1000))
   BlockInput(1)
   MouseMove($posx6,$posy6)
   MouseClick("left")
   Sleep(500 + Random(0,250))
   For $i=1 to $finalitembulk
   MouseMove(MouseGetPos(0),MouseGetPos(1)+12)
   Sleep(500 + Random(0,250))
   Send("{LShift down}")
   Sleep(500 + Random(0,250))
   MouseClick("left")
   Sleep(500 + Random(0,250))
   Send("{LShift up}")
   MouseClickDrag("left",$posx6,($posy6),$posx2,$posy2)
   Sleep(500 + Random(0,250))
   Next
   BlockInput(0)
   endif
EndFunc
;2.0 GUI part of code
#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <TabConstants.au3>
#include <WindowsConstants.au3>
;2.1 GUI form
#Region ### START Koda GUI section ###
$Form1_1 = GUICreate("Bob The Builder v1.06", 411, 335, 251, 180)
$Tabpointclick = GUICtrlCreateTab(0, 0, 401, 329)
$PointClick = GUICtrlCreateTabItem("Point and Click")
$GroupRadioPointClick = GUICtrlCreateGroup("", 4, 33, 105, 121)
$RadioMining = GUICtrlCreateRadio("Mining", 28, 49, 57, 17)
$RadioFishing = GUICtrlCreateRadio("Fishing", 28, 73, 57, 17)
$RadioTracking = GUICtrlCreateRadio("Tracking", 28, 97, 65, 17)
$RadDigging5 = GUICtrlCreateRadio("Digging", 24, 120, 113, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$GroupAuto_walkpointclick = GUICtrlCreateGroup("", 116, 33, 225, 49)
$LblAuto_walkpointandclick = GUICtrlCreateLabel("Auto_Walk", 124, 49, 57, 17)
$RadioAutoWalkOnPointclick = GUICtrlCreateRadio("On", 188, 49, 41, 17)
$Radioauto_walkoffpointclick = GUICtrlCreateRadio("Off", 236, 49, 65, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Groupcycle_timepointclick = GUICtrlCreateGroup("", 116, 89, 225, 65)
$LblCycle_timepointclick = GUICtrlCreateLabel("Cycle Time", 132, 105, 56, 17)
$InputCycleTimepointclick = GUICtrlCreateInput("Insert Cycle Time", 204, 105, 121, 21)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$GroupStopstartpointclick = GUICtrlCreateGroup("", 12, 209, 345, 57)
$BtnStartpointclick = GUICtrlCreateButton("Start", 76, 225, 75, 25)
$Btnstoppointclick = GUICtrlCreateButton("Stop", 188, 225, 75, 25)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$GroupTimelimitpointclick = GUICtrlCreateGroup("", 4, 153, 345, 49)
$Inputtimelimitpointclick = GUICtrlCreateInput("", 212, 169, 121, 21)
$RadioTimelimitpointclick = GUICtrlCreateRadio("Time Limit", 20, 177, 73, 17)
$RadioCyclelimitpointclick = GUICtrlCreateRadio("Cycle Limit", 108, 177, 81, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Creation = GUICtrlCreateTabItem("Creation")
$GroupMousesetcreation = GUICtrlCreateGroup("Setting", 8, 32, 161, 177)
$Btninitialbulk = GUICtrlCreateButton("Set Initial Bulk", 32, 48, 115, 25)
$Btninventoryloc = GUICtrlCreateButton("Set Inventory location", 32, 112, 115, 25)
$BtnMenu1 = GUICtrlCreateButton("Menu1", 16, 144, 67, 25)
$BtnMenu2 = GUICtrlCreateButton("Menu2", 88, 144, 67, 25)
$BtnMenu3 = GUICtrlCreateButton("Menu3", 16, 176, 67, 25)
$Btnfinalbulk = GUICtrlCreateButton("Set Final Bulk", 32, 80, 115, 25)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$GroupCycletimeCreation = GUICtrlCreateGroup("", 180, 153, 201, 57)
$LblCycle_time = GUICtrlCreateLabel("Cycle Time", 188, 169, 56, 17)
$InputCycleTimeCreation = GUICtrlCreateInput("Insert Cycle Time", 252, 169, 121, 21)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Grouptimelimitcreation = GUICtrlCreateGroup("", 12, 209, 345, 49)
$Inputtimelimitcreation = GUICtrlCreateInput("", 220, 225, 121, 21)
$RadioTimelimitcreation = GUICtrlCreateRadio("Time Limit", 20, 225, 73, 17)
$Radiocyclelimitcreation = GUICtrlCreateRadio("Cycle Limit", 116, 225, 81, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$groupstopstartcration = GUICtrlCreateGroup("", 12, 257, 345, 57)
$Btnstartcreation = GUICtrlCreateButton("Start", 76, 273, 75, 25)
$Btnstopcreation = GUICtrlCreateButton("Stop", 188, 273, 75, 25)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$GroupAction = GUICtrlCreateGroup("Action", 180, 41, 201, 49)
$InputNumberAction = GUICtrlCreateInput("", 200, 56, 129, 21)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$GroupIteration = GUICtrlCreateGroup("Iteration", 184, 96, 193, 41)
$InputIteration = GUICtrlCreateInput("1", 208, 112, 121, 21)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Creation_Settings = GUICtrlCreateTabItem("Creation_Settings")
$GroupNumberFinalItem = GUICtrlCreateGroup("FinalItems", 24, 216, 345, 57)
$LblFinalItem = GUICtrlCreateLabel("#item to the Final Bulk", 32, 248, 109, 17)
$InptFinalItemBulk = GUICtrlCreateInput("2", 160, 248, 57, 21)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$GroupInitialItem = GUICtrlCreateGroup("", 32, 40, 329, 89)
$Lbltoolchange = GUICtrlCreateLabel("Change Tool?", 40, 56, 71, 17)
$Radchangetoolyes = GUICtrlCreateRadio("Yes", 160, 56, 49, 17)
$Radchangetoolno = GUICtrlCreateRadio("No", 120, 56, 41, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
$Lbleachchangetool = GUICtrlCreateLabel("Each", 56, 96, 29, 17)
$InputChangetoolcycle = GUICtrlCreateInput("1", 104, 96, 25, 21)
$LblCyclechangetool = GUICtrlCreateLabel("Cycles", 144, 96, 35, 17)
$BtnSetToolPosition = GUICtrlCreateButton("SetTool", 200, 72, 75, 25)
$BtnNewtool = GUICtrlCreateButton("NewTool", 280, 72, 75, 25)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$GroupBulkBin = GUICtrlCreateGroup("Bulk Bin", 32, 144, 329, 57)
$RadBulkBinNo = GUICtrlCreateRadio("No", 40, 160, 49, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
$RadBulkBinYes = GUICtrlCreateRadio("Yes", 104, 160, 49, 17)
$InputBulkBin = GUICtrlCreateInput("Pick #", 168, 160, 121, 21)
GUICtrlCreateGroup("", -99, -99, 1, 1)
GUICtrlCreateTabItem("")
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
;2.2 OnEvent Programing
HotKeySet("^{h}","takeposition")
GUISetOnEvent($GUI_EVENT_CLOSE, "CLOSEClicked")
Opt("GUIOnEventMode", 1)  ; Change to OnEvent mode 
   ;2.2.1 Tab 1 Point and Click
GUICtrlSetOnEvent($RadioMining, "Mine1")
GUICtrlSetOnEvent($RadioFishing, "Fish2")
GUICtrlSetOnEvent($RadioTracking, "Track3")
GUICtrlSetOnEvent($RadDigging5, "Digging5")
GUICtrlSetOnEvent($RadioAutoWalkOnPointclick, "Walkon")
GUICtrlSetOnEvent($Radioauto_walkoffpointclick, "Walkoff")
GUICtrlSetOnEvent($InputCycleTimepointclick, "cyclez1")
GUICtrlSetOnEvent($BtnStartpointclick, "son")
GUICtrlSetOnEvent($Btnstoppointclick, "soff")
GUICtrlSetOnEvent($RadioTimelimitpointclick, "ltime")
GUICtrlSetOnEvent($RadioCyclelimitpointclick, "lcount")
GUICtrlSetOnEvent($Inputtimelimitpointclick, "lset")
   ;2.2.2 Tab 2 Creation
GUICtrlSetOnEvent($Btninitialbulk, "InitialBulk")
GUICtrlSetOnEvent($Btninventoryloc, "Inventory")
GUICtrlSetOnEvent($InputCycleTimeCreation, "cyclez2")
GUICtrlSetOnEvent($RadioTimelimitcreation, "ltime")
GUICtrlSetOnEvent($Radiocyclelimitcreation, "lcount")
GUICtrlSetOnEvent($Btnstartcreation, "son2")
GUICtrlSetOnEvent($Btnstopcreation, "soff")
GUICtrlSetOnEvent($Inputtimelimitcreation, "lset")
GUICtrlSetOnEvent($BtnMenu1, "Menu1")
GUICtrlSetOnEvent($BtnMenu2, "Menu2")
GUICtrlSetOnEvent($BtnMenu3, "Menu3")
GUICtrlSetOnEvent($Btnfinalbulk, "FinalBulk")
GUICtrlSetOnEvent($InputNumberAction, "Action")
GUICtrlSetOnEvent($InputIteration, "SetIteration")
   ;2.2.3 Tab 3 Creation Setting
GUICtrlSetOnEvent($InptFinalItemBulk, "SetFinalItemBulk")
Func CLOSEClicked()
   Exit
EndFunc
   ;(kinda) Tab1
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
   Func Digging5()
	  Call("setOption", 5)
	  Call("ena")
   EndFunc
Func Walkon()
	  Call("WalkSet", true)
EndFunc
Func Walkoff()
	  Call("WalkSet", false)
EndFunc
Func cyclez1()
	  call("setCycle",GUICTrlRead($InputCycleTimepointclick))
EndFunc
Func cyclez2()
	  call("setCycle",GUICTrlRead($InputCycleTimeCreation))
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
	  Call("setLimit",GUICTrlRead($Inputtimelimitcreation))
   EndFunc
Func InitialBulk()
	  Call("positionset1");
   EndFunc
Func FinalBulk()
	  Call("positionset2");
EndFunc
Func Menu1()
	  Call("positionset3");
EndFunc
Func Menu2()
	  Call("positionset4");
EndFunc
Func Menu3()
	  Call("positionset5");
   EndFunc
Func Inventory()
	  Call("positionset6");
EndFunc
Func Action()
	  Call("setcreationcount",GUICTrlRead($InputNumberAction))
   EndFunc
   Func setiteration()
	  Call("SetIterationcount",GUICTrlRead($InputIteration))
   EndFunc
      Func setfinalitembulk()
	  Call("Finalitembulk",GUICTrlRead($InptFinalItemBulk))
EndFunc
While 1
	  Call("Looptime")

WEnd




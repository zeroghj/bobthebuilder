;Version 1.07c
; Menu
; 1.0 BackEnd
   ; 1.1 Variables
   ; 1.2 Short Functions
   ; 1.3 Main Functions
	  ; 1.3.1 MainLoop Function
	  ; 1.3.2 Creation function
	  ; 1.3.3 Improvement Function
; 2.0 GUI
   ;2.1 GUI form
   ;2.2 OnEvent Programing
	  ;2.2.1 Tab 1 Main Menu
	  ;2.2.2 Tab 2 Creation
	  ;2.2.3 Tab 3 Improvement
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
Global $wposx1=0
Global $wposy1=0
Global $wposx2=0
Global $wposy2=0
Global $lposx1=0
Global $lposy1=0
Global $lposx2=0
Global $lposy2=0
Global $itemposx1=0
Global $itemposy1=0
Global $itemposx2=0
Global $itemposy2=0
Global $itemposx3=0
Global $itemposy3=0
Global $itemposx4=0
Global $itemposy4=0
Global $itemposx5=0
Global $itemposy5=0
Global $itemposx6=0
Global $itemposy6=0
Global $finalitembulk=2
Global $lumptimer=0
Global $state=0
Global $BB=true
Global $Beep=false
Global $Minimize=false
Global $itemnumber=1
Global $loopcounter=0
Global $ps1=0
Global $ps2=0
Global $citem=0
Global $state= WinGetState("Wurm Online 3.1.77-4859", "")
; 1.2 Short Functions
Func setCycle($a)
   $Cycle_time=($a*1000)
EndFunc
Func setBB($b)
   $BB =$b
EndFunc
Func setminimize($c)
   $Minimize =$c
EndFunc
Func setbeep($d)
   $Beep =$d
EndFunc
Func setitemnumber($a)
   if $a > $itemnumber then
		$itemnumber = $a
	Endif
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
   $looping=false
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
Func positionsetwater1 ()
   $wposx1 = $posx
   $wposy1 = $posy
EndFunc
Func positionsetwater2 ()
   $wposx2 = $posx
   $wposy2 = $posy
EndFunc
Func positionsetlump1 ()
   $lposx1 = $posx
   $lposy1 = $posy
EndFunc
Func positionsetlump2 ()
   $lposx2 = $posx
   $lposy2 = $posy
EndFunc
Func positionsetitem1 ()
   $itemposx1 = $posx
   $itemposy1 = $posy
EndFunc
Func positionsetitem2 ()
   $itemposx2 = $posx
   $itemposy2 = $posy
EndFunc
Func positionsetitem3 ()
   $itemposx3 = $posx
   $itemposy3 = $posy
EndFunc
Func positionsetitem4 ()
   $itemposx4 = $posx
   $itemposy4 = $posy
EndFunc
Func positionsetitem5 ()
   $itemposx5 = $posx
   $itemposy5 = $posy
EndFunc
Func positionsetitem6 ()
   $itemposx6 = $posx
   $itemposy6 = $posy
EndFunc
Func Beeping()
if ($Beep) then
Beep(500,500)
Endif
EndFunc
Func Minimize($a)
if ($a) then
	call("Beeping")
	if ($Minimize) then
		$state = WinGetState("Wurm Online 3.1.77-4859", "")
		WinActivate("Wurm Online 3.1.77-4859", "")
		WinWaitActive("Wurm Online 3.1.77-4859")
	EndIf
Endif
		If (($Minimize)AND(NOT($a))AND(NOT($state = 8))) Then
		WinSetState("Wurm Online 3.1.77-4859", "", @SW_MINIMIZE)
		EndIf
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
		 call("Minimize", true)
		 Send("{w down}")
		 sleep(1000+Random(0,500))
		 Send("{w up}")
		 call("Minimize", false)
	  EndIf
	  if ($looping) Then
	  call("getwater")
	  Endif
	  Switch $Option
	  Case 1
		 For $i =0 to 5
			if($looping) Then
			   if (NOT($binded)) Then
					call("Minimize", true)
				  send("{F1}")
				  send("bind 1 mine_forward")
				  sleep(1000)
				  send("{Enter}")
				  send("{F1}")
				  $binded=True
			   EndIf
			   call("Minimize", true)
			   Send("1")
			   call("Minimize", false)
			   Call("BossCount")
			   sleep($Cycle_time + Random(0,1000))
			EndIf
		 Next
	  Case 2
		 For $i =0 to 5
			if($looping) Then
			   if (NOT($binded)) Then
			   call("Minimize", true)
				  send("{F1}")
				  send("bind 1 fish")
				  sleep(1000)
				  send("{Enter}")
				  send("{F1}")
				  $binded=True
			   EndIf
			   call("Minimize", true)
			   Send("1")
			   Call("BossCount")
			   call("Minimize", false)
			   sleep(Random(0,20000))
			EndIf
		 Next
	  Case 3
		 For $i =0 to 5
			if($looping) Then
			   if (NOT($binded)) Then
			   call("Minimize", true)
				  send("{F1}")
				  send("bind 1 track")
				  sleep(1000)
				  send("{Enter}")
				  send("{F1}")
				  $binded=True
			   EndIf
			   call("Minimize", true)
			   Send("1")
			   call("Minimize", false)
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
			   call("Minimize", true)
				  send("{F1}")
				  send("bind 1 dig")
				  sleep(1000)
				  send("{Enter}")
				  send("{F1}")
				  $binded=True
			   EndIf
			   Send("1")
			   Call("BossCount")
			   call("Minimize", false)
			   sleep($Cycle_time + Random(0,1000))
			EndIf
		 Next
	  	  Case 6
		 For $i =0 to 5
			if($looping) Then
			   if (NOT($binded)) Then
				  call("Minimize", true)
				  send("{F1}")
				  send("bind 1 IMPROVE")
				  sleep(1000 + Random(0,1000))
				  send("{Enter}")
				  sleep(1000 + Random(0,1000))
				  send("{Enter}")
				  send("bind 2 REPAIR")
				  sleep(1000 + Random(0,1000))
				  send("{Enter}")
				  sleep(1000 + Random(0,1000))
				  send("{Enter}")
				  send("bind o ACTIVATE_TOOL1")
				  sleep(1000 + Random(0,1000))
				  send("{Enter}")
				  sleep(1000 + Random(0,1000))
				  send("{Enter}")
				  send("bind p ACTIVATE_TOOL2")
				  sleep(1000 + Random(0,1000))
				  send("{Enter}")
				  sleep(1000 + Random(0,1000))
				  send("{Enter}")
				  send("bind k ACTIVATE_TOOL3")
				  sleep(1000 + Random(0,1000))
				  send("{Enter}")
				  sleep(1000 + Random(0,1000))
				  send("{Enter}")
				  send("bind l ACTIVATE_TOOL4")
				  sleep(1000 + Random(0,1000))
				  send("{Enter}")
				  sleep(1000 + Random(0,1000))
				  send("{Enter}")
				  send("bind m ACTIVATE_TOOL5")
				  sleep(1000 + Random(0,1000))
				  send("{Enter}")
				  sleep(1000 + Random(0,1000))
				  send("{Enter}")
				  send("bind j ACTIVATE_TOOL6")
				  sleep(1000 + Random(0,1000))
				  send("{Enter}")
				  send("{F1}")
				  $binded=True
			   EndIf
			   Endif
			   If ($looping) Then
			   sleep(1000 + Random(0,1000))
			   call("Minimize", true)
			   BlockInput(1)
			   If ($lumptimer > 40) Then
				  MouseClickDrag("left",$lposx1,$lposy1,$lposx2,$lposy2)
				  Sleep(1000 + Random(0,1000))
				  MouseClickDrag("left",$lposx2,($lposy2+8),$lposx1,$lposy1)
				  $lumptimer = 0
				  sleep(1000 + Random(0,1000))
			   EndIf 
			   if ( $citem < $itemnumber ) then
				$citem = $citem +1
				else
				$citem = 1
				endif
				call("Improveitem", $citem)
			   
			   BlockInput(0)
			   $lumptimer = $lumptimer + 1
			   call("Minimize", false)
			   Call("BossCount")
			   sleep($Cycle_time + Random(0,1000))
			EndIf
		 Next
		 
	  Endswitch
   WEnd
Endfunc
Func getwater ()
 $loopcounter = $loopcounter + 1
 if ($loopcounter>2) then
 $loopcounter=0
 call("Minimize", true)
 BlockInput(1)
 MouseMove($wposx1,$wposy1)
 sleep(1000 + Random(0,1000))
 MouseClick("right")
 sleep(1000 + Random(0,1000))
 MouseMove($wposx2,$wposy2)
 sleep(1000 + Random(0,1000))
 MouseClick("left")
 BlockInput(0)
 call("Minimize", false)
 sleep(2000 + Random(0,1000))
 endif
EndFunc
;1.3.2 Creation Function
Func Creation()
If ($looping) Then
   sleep(100  + Random(0,1000))
   $iterate=0
   call("Minimize, true")
BlockInput(1)
MouseClickDrag("left",$posx1,$posy1,$posx6,$posy6)
   sleep(1000  + Random(0,1000))
   Send($CreationCount)
   Send("{Enter}")
   BlockInput(0)
   Endif
   call("Minimize, false")
   sleep(1000  + Random(0,1000))
   While ($iterate <$iteration)
   If ($looping) Then
		call("Minimize, true")
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
	  call("Minimize, false")
	  Sleep($Cycle_Time  + Random(0,3000))
	  $iterate= $iterate+1
	  Endif
   Wend
   if ($looping) then
	  sleep(100  + Random(0,1000))
	  call("Minimize, true")
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
   call("Minimize, false")
   endif
EndFunc
;1.3.3 Improvement Function
Func Improveitem ($a)

	Switch $a
		Case 1
				$ps1 = $itemposx1
				$ps2 = $itemposy1
		Case 2
				$ps1 = $itemposx2
				$ps2 = $itemposy2
		Case 3
				$ps1 = $itemposx3
				$ps2 = $itemposy3
		Case 4
				$ps1 = $itemposx4
				$ps2 = $itemposy4
		Case 5
				$ps1 = $itemposx5
				$ps2 = $itemposy5
		Case 6
				$ps1 = $itemposx6
				$ps2 = $itemposy6
	Endswitch
	MouseMove($ps1,$ps2)
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
$Form1_1 = GUICreate("Bob The Builder v1.07c", 450, 371, 259, 142)
$TabMainMen = GUICtrlCreateTab(0, 0, 433, 217)
$Main = GUICtrlCreateTabItem("Main Menu")
$GroupRadioPointClick = GUICtrlCreateGroup("", 4, 33, 105, 161)
$RadioMining = GUICtrlCreateRadio("Mining", 12, 41, 57, 17)
$RadioFishing = GUICtrlCreateRadio("Fishing", 12, 57, 57, 17)
$RadioTracking = GUICtrlCreateRadio("Tracking", 12, 73, 65, 17)
$RadDigging5 = GUICtrlCreateRadio("Digging", 8, 104, 113, 17)
$RadCreation4 = GUICtrlCreateRadio("Creation", 8, 88, 113, 17)
$RadImprovement6 = GUICtrlCreateRadio("Improvement", 8, 120, 113, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$GroupAuto_walkpointclick = GUICtrlCreateGroup("", 188, 33, 225, 49)
$LblAuto_walkpointandclick = GUICtrlCreateLabel("Auto_Walk", 196, 49, 57, 17)
$RadioAutoWalkOnPointclick = GUICtrlCreateRadio("On", 260, 49, 41, 17)
$Radioauto_walkoffpointclick = GUICtrlCreateRadio("Off", 308, 49, 65, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group1 = GUICtrlCreateGroup("Drink", 184, 96, 233, 65)
$BtnWaterlocation = GUICtrlCreateButton("Inventory", 200, 120, 75, 25)
$BtnDrink = GUICtrlCreateButton("Drink", 280, 120, 75, 25)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$GroupBeep = GUICtrlCreateGroup("Beep", 112, 32, 65, 73)
$RadBeepoff = GUICtrlCreateRadio("Off", 120, 56, 49, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
$RadBeepon = GUICtrlCreateRadio("On", 120, 80, 49, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$GroupMinimize = GUICtrlCreateGroup("Minimize", 112, 104, 65, 73)
$RadMinimizeoff = GUICtrlCreateRadio("Off", 120, 128, 49, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
$RadMinimizeOn = GUICtrlCreateRadio("On", 120, 152, 49, 17)
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
$GroupIteration = GUICtrlCreateGroup("Iteration", 192, 40, 193, 41)
$InputIteration = GUICtrlCreateInput("1", 216, 56, 121, 21)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Groupchangetool = GUICtrlCreateGroup("", 168, 80, 257, 73)
$Lblchangetool = GUICtrlCreateLabel("Change Tool?", 176, 96, 71, 17)
$RadChangeToolYes = GUICtrlCreateRadio("Yes", 296, 96, 49, 17)
$RadChangetoolNo = GUICtrlCreateRadio("No", 256, 96, 41, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
$lblchangetooleach = GUICtrlCreateLabel("Each", 192, 120, 29, 17)
$Inptooleach = GUICtrlCreateInput("1", 240, 120, 25, 21)
$LblCycles = GUICtrlCreateLabel("Cycles", 280, 120, 35, 17)
$BtnSetTool = GUICtrlCreateButton("SetTool", 344, 96, 75, 25)
$BtnNewTool = GUICtrlCreateButton("NewTool", 344, 120, 75, 25)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$GroupBulkBin = GUICtrlCreateGroup("Bulk Bin", 176, 152, 233, 57)
$RadBBNo = GUICtrlCreateRadio("No", 192, 168, 49, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
$RadBBYes = GUICtrlCreateRadio("Yes", 240, 168, 49, 17)
$InpBBPick = GUICtrlCreateInput("Pick #", 184, 184, 105, 21)
$InpBBDrop = GUICtrlCreateInput("Drop #", 304, 184, 73, 21)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Improvement = GUICtrlCreateTabItem("Improvement")
$GroupSetLocationImprovement = GUICtrlCreateGroup("", 24, 40, 145, 145)
$BtnInventoryimprovementlump = GUICtrlCreateButton("Inventory", 48, 96, 75, 25)
$BtnNewLump = GUICtrlCreateButton("New Lump", 48, 128, 75, 25)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$GroupItemtoImprove = GUICtrlCreateGroup("Item to Improve", 200, 48, 185, 105)
$Btnitem1 = GUICtrlCreateButton("1", 216, 80, 43, 25)
$btnitem2 = GUICtrlCreateButton("2", 264, 80, 43, 25)
$Btnitem3 = GUICtrlCreateButton("3", 320, 80, 43, 25)
$Btnitem4 = GUICtrlCreateButton("4", 216, 112, 43, 25)
$Btnitem5 = GUICtrlCreateButton("5", 264, 112, 43, 25)
$Btnitem6 = GUICtrlCreateButton("6", 320, 112, 43, 25)
GUICtrlCreateGroup("", -99, -99, 1, 1)
GUICtrlCreateTabItem("")
$limitgroup = GUICtrlCreateGroup("", 8, 216, 185, 97)
$Cycleinput = GUICtrlCreateInput("", 40, 272, 121, 21)
$RadTimeLimit = GUICtrlCreateRadio("Time Limit", 24, 240, 73, 17)
$RadCyclelimit = GUICtrlCreateRadio("Cycle Limit", 112, 240, 81, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$GroupStopstartpointclick = GUICtrlCreateGroup("", 40, 312, 345, 57)
$BtnStartpointclick = GUICtrlCreateButton("Start", 104, 328, 75, 25)
$Btnstoppointclick = GUICtrlCreateButton("Stop", 216, 328, 75, 25)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$GroupCycletime = GUICtrlCreateGroup("", 200, 248, 225, 65)
$LblCycletime = GUICtrlCreateLabel("Cycle Time", 216, 264, 56, 17)
$InpCycletime = GUICtrlCreateInput("Insert Cycle Time", 288, 264, 121, 21)
GUICtrlCreateGroup("", -99, -99, 1, 1)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
;2.2 OnEvent Programing
HotKeySet("^{h}","takeposition")
GUISetOnEvent($GUI_EVENT_CLOSE, "CLOSEClicked")
Opt("GUIOnEventMode", 1)  ; Change to OnEvent mode 
   ;2.2.1 Tab 1 Main Menu
GUICtrlSetOnEvent($RadioMining, "Mine1")
GUICtrlSetOnEvent($RadioFishing, "Fish2")
GUICtrlSetOnEvent($RadioTracking, "Track3")
GUICtrlSetOnEvent($RadDigging5, "Digging5")
GUICtrlSetOnEvent($RadCreation4, "Creation4")
GUICtrlSetOnEvent($RadImprovement6, "Improvement6")
GUICtrlSetOnEvent($RadioAutoWalkOnPointclick, "Walkon")
GUICtrlSetOnEvent($Radioauto_walkoffpointclick, "Walkoff")
GUICtrlSetOnEvent($InpCycletime, "cyclez")
GUICtrlSetOnEvent($BtnStartpointclick, "son")
GUICtrlSetOnEvent($Btnstoppointclick, "soff")
GUICtrlSetOnEvent($RadTimeLimit, "ltime")
GUICtrlSetOnEvent($RadCyclelimit, "lcount")
GUICtrlSetOnEvent($Cycleinput, "lset")
GUICtrlSetOnEvent($BtnWaterlocation, "water1")
GUICtrlSetOnEvent($BtnDrink, "water2")
GUICtrlSetOnEvent($RadBeepoff, "beepoff")
GUICtrlSetOnEvent($RadBeepon, "beepon")
GUICtrlSetOnEvent($RadMinimizeoff, "minoff")
GUICtrlSetOnEvent($RadMinimizeOn, "minon")
   ;2.2.2 Tab 2 Creation
GUICtrlSetOnEvent($Btninitialbulk, "InitialBulk")
GUICtrlSetOnEvent($Btninventoryloc, "Inventory")
GUICtrlSetOnEvent($BtnMenu1, "Menu1")
GUICtrlSetOnEvent($BtnMenu2, "Menu2")
GUICtrlSetOnEvent($BtnMenu3, "Menu3")
GUICtrlSetOnEvent($Btnfinalbulk, "FinalBulk")
GUICtrlSetOnEvent($InputIteration, "SetIteration")
GUICtrlSetOnEvent($RadBBNo, "BBNO")
GUICtrlSetOnEvent($RadBBYes, "BBYES")
GUICtrlSetOnEvent($InpBBPick, "Action")
GUICtrlSetOnEvent($InpBBDrop, "SetFinalItemBulk")
   ;2.2.3 Tab 3 Improvement
GUICtrlSetOnEvent($BtnInventoryimprovementlump, "SetInventorylump")
GUICtrlSetOnEvent($BtnNewLump, "SetForgelump")
GUICtrlSetOnEvent($Btnitem1, "Setitem1")
GUICtrlSetOnEvent($Btnitem2, "Setitem2")
GUICtrlSetOnEvent($Btnitem3, "Setitem3")
GUICtrlSetOnEvent($Btnitem4, "Setitem4")
GUICtrlSetOnEvent($Btnitem5, "Setitem5")
GUICtrlSetOnEvent($Btnitem6, "Setitem6")
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
      Func Creation4()
	  Call("setOption", 4)
	  Call("dis")
   EndFunc
   Func Digging5()
	  Call("setOption", 5)
	  Call("ena")
   EndFunc
      Func Improvement6()
	  Call("setOption", 6)
	  Call("dis")
   EndFunc
Func Walkon()
	  Call("WalkSet", true)
EndFunc
Func Walkoff()
	  Call("WalkSet", false)
EndFunc
Func cyclez()
	  call("setCycle",GUICTrlRead($InpCycletime))
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
	  Call("setLimit",GUICTrlRead($Cycleinput))
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
Func water1()
	  Call("positionsetwater1");
EndFunc
Func water2()
	  Call("positionsetwater2");
EndFunc
Func SetInventorylump()
	  Call("positionsetlump1");
EndFunc
Func SetForgelump()
	  Call("positionsetlump2");
EndFunc
Func Setitem1()
	  Call("positionsetitem1");
	  Call("setitemnumber",1);
EndFunc
Func Setitem2()
	  Call("positionsetitem2");
	  Call("setitemnumber",2);
EndFunc
Func Setitem3()
	  Call("positionsetitem3");
	  Call("setitemnumber",3);
EndFunc
Func Setitem4()
	  Call("positionsetitem4");
	  Call("setitemnumber",4);
EndFunc
Func Setitem5()
	  Call("positionsetitem5");
	  Call("setitemnumber",5);
EndFunc
Func Setitem6()
	  Call("positionsetitem6");
	  Call("setitemnumber",6);
EndFunc
Func BBNO()
	  Call("setBB", false);
EndFunc
Func BBYES()
	  Call("setBB", true);
EndFunc
Func minoff()
	  Call("setminimize", false);
EndFunc
Func minon()
	  Call("setminimize", true);
EndFunc
Func beepoff()
	  Call("setbeep", false);
EndFunc
Func beepon()
	  Call("setbeep", true);
EndFunc
Func Action()
	  Call("setcreationcount",GUICTrlRead($InpBBPick))
   EndFunc
   Func setiteration()
	  Call("SetIterationcount",GUICTrlRead($InputIteration))
   EndFunc
      Func setfinalitembulk()
	  Call("Finalitembulk",GUICTrlRead($InpBBDrop))
EndFunc
While 1
	  Call("Looptime")

WEnd



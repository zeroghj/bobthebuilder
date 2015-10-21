Func VerifySaveFiles()
  If  ProcessExists($wurmprocessname) Then
    $wurmisopen = true
  EndIf
  $SaveExists = FileExists (@ScriptDir & "\save\hotkeypath.txt")
  if $SaveExists = 0 Then
    call("hotkeypathsel")
  EndIf
  if $binded = false Then
    call("Comparefiles")
  EndIf
EndFunc
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
Func enac()
   $walk=false
   	  GUICtrlSetState($RadAutoWalkOn,$GUI_Disable)
	  GUICtrlSetState($RadAutoWalkOff,$GUI_Disable)
	  GUICtrlSetPos($GroupCreation,21, 85, 89, 65)
	  GUICtrlSetPos($InpCreation1,8, 159, 121, 22)
	  GUICtrlSetPos($InpCreation2,8, 184, 121, 22)
		GUICtrlSetPos($BtnCreationSet,29, 109, 75, 25)
	  GUICtrlSetPos($Groupeteration,229, 37, 193, 41)
			GUICtrlSetPos($InputIteration,253, 53, 121, 21)
	  GUICtrlSetPos($Groupchangetool,173, 77, 257, 73)
			GUICtrlSetPos($Groupchangetool,173, 77, 257, 73)
			GUICtrlSetPos($Lblchangetool,181, 93, 71, 17)
			GUICtrlSetPos($RadChangeToolYes,301, 93, 49, 17)
			GUICtrlSetPos($RadChangeToolNo,261, 93, 41, 17)
			GUICtrlSetPos($Lblchangetooleach,197, 117, 29, 17)
			GUICtrlSetPos($Inptooleach,245, 117, 25, 21)
			GUICtrlSetPos($LblCycles,285, 117, 35, 17)
			GUICtrlSetPos($BtnSetTools,349, 109, 75, 25)
	  GUICtrlSetPos($GroupBulkBin,197, 149, 233, 57)
		GUICtrlSetPos($RadBBNo,213, 165, 49, 17)
		GUICtrlSetPos($RadBBYes,261, 165, 49, 17)
		GUICtrlSetPos($InpBBPick,205, 181, 105, 21)
		GUICtrlSetPos($InpBBDrop,325, 181, 73, 21)
	  GUICtrlSetPos($GroupImprove,-10,-10,0,0)
		GUICtrlSetPos($BtnImproveSetLump, -10,-10,0,0)
		GUICtrlSetPos($BtnImproveSetItems, -10,-10,0,0)
EndFunc
Func eni()
   $walk=false
   	  GUICtrlSetState($RadAutoWalkOn,$GUI_Disable)
	  GUICtrlSetState($RadAutoWalkOff,$GUI_Disable)
	  	  GUICtrlSetPos($InpCreation1,-10,-10,0,0)
	  GUICtrlSetPos($InpCreation2,-10,-10,0,0)
	  GUICtrlSetPos($GroupCreation,-10,-10,0,0)
		GUICtrlSetPos($BtnCreationSet,-10,-10,0,0)
	  GUICtrlSetPos($Groupeteration,-10,-10,0,0)
			GUICtrlSetPos($InputIteration,-10,-10,0,0)
	  GUICtrlSetPos($Groupchangetool,-10,-10,0,0)
			GUICtrlSetPos($Groupchangetool,-10,-10,0,0)
			GUICtrlSetPos($Lblchangetool,-10,-10,0,0)
			GUICtrlSetPos($RadChangeToolYes,-10,-10,0,0)
			GUICtrlSetPos($RadChangeToolNo,-10,-10,0,0)
			GUICtrlSetPos($Lblchangetooleach,-10,-10,0,0)
			GUICtrlSetPos($Inptooleach,-10,-10,0,0)
			GUICtrlSetPos($LblCycles,-10,-10,0,0)
			GUICtrlSetPos($BtnSetTools,-10,-10,0,0)
	  GUICtrlSetPos($GroupBulkBin,-10,-10,0,0)
		GUICtrlSetPos($RadBBNo,-10,-10,0,0)
		GUICtrlSetPos($RadBBYes,-10,-10,0,0)
		GUICtrlSetPos($InpBBPick,-10,-10,0,0)
		GUICtrlSetPos($InpBBDrop,-10,-10,0,0)
	  GUICtrlSetPos($GroupImprove, 13, 85, 89, 97)
		GUICtrlSetPos($BtnImproveSetLump, 21, 109, 75, 25)
		GUICtrlSetPos($BtnImproveSetItems, 21, 149, 75, 25)
EndFunc
Func ena()
   	  GUICtrlSetState($RadAutoWalkOn,$GUI_Enable)
	  GUICtrlSetState($RadAutoWalkOff,$GUI_Enable)
	  	  GUICtrlSetPos($InpCreation1,-10,-10,0,0)
	  GUICtrlSetPos($InpCreation2,-10,-10,0,0)
	  GUICtrlSetPos($GroupCreation,-10,-10,0,0)
		GUICtrlSetPos($BtnCreationSet,-10,-10,0,0)
	  GUICtrlSetPos($Groupeteration,-10,-10,0,0)
			GUICtrlSetPos($InputIteration,-10,-10,0,0)
	  GUICtrlSetPos($Groupchangetool,-10,-10,0,0)
			GUICtrlSetPos($Groupchangetool,-10,-10,0,0)
			GUICtrlSetPos($Lblchangetool,-10,-10,0,0)
			GUICtrlSetPos($RadChangeToolYes,-10,-10,0,0)
			GUICtrlSetPos($RadChangeToolNo,-10,-10,0,0)
			GUICtrlSetPos($Lblchangetooleach,-10,-10,0,0)
			GUICtrlSetPos($Inptooleach,-10,-10,0,0)
			GUICtrlSetPos($LblCycles,-10,-10,0,0)
			GUICtrlSetPos($BtnSetTools,-10,-10,0,0)
	  GUICtrlSetPos($GroupBulkBin,-10,-10,0,0)
		GUICtrlSetPos($RadBBNo,-10,-10,0,0)
		GUICtrlSetPos($RadBBYes,-10,-10,0,0)
		GUICtrlSetPos($InpBBPick,-10,-10,0,0)
		GUICtrlSetPos($InpBBDrop,-10,-10,0,0)
	  GUICtrlSetPos($GroupImprove, -10,-10,0,0)
		GUICtrlSetPos($BtnImproveSetLump, -10,-10,0,0)
		GUICtrlSetPos($BtnImproveSetItems, -10,-10,0,0)
EndFunc
Func mouseinitpos()
   $initposx = MouseGetPos(0)
   $initposy = MouseGetPos(1)
EndFunc
Func mousereturn()
   MouseMove($initposx,$initposy,0)
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
   if ($a==0) Or ($a=="") Then
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
Func takeposition()
   $posx = MouseGetPos(0)
   $posy = MouseGetPos(1)
EndFunc

Func SetMenu1()
   $Menu1=GUICTrlRead($InpCreation1)
EndFunc
Func SetMenu2()
   $Menu2=GUICTrlRead($InpCreation2)
EndFunc
;GUi function


Func CLOSEClicked()
   Exit
EndFunc
   ;(kinda) Tab1
Func ListofActivityChange()
	Local $switcheroo = GUICtrlRead($ListofActivity)
	Switch $switcheroo
	Case "Mining"
		call("Mine1")
	Case "Fishing"
		call("Fish2")
	Case "Tracking"
		call("Track3")
	Case "Creation"
		call("Creation4")
	Case "Digging"
		call("Digging5")
	Case "Improve"
		call("Improvement6")
	Endswitch
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
      Func Creation4()
	  Call("setOption", 4)
	  Call("enac")
   EndFunc
   Func Digging5()
	  Call("setOption", 5)
	  Call("ena")
   EndFunc
      Func Improvement6()
	  Call("setOption", 6)
	  Call("eni")
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

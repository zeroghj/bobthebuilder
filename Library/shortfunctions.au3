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
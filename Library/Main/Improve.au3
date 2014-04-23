Func Improve()
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
			   If ($lumptimer > 40 And $lump) Then
				  MouseClickDrag("left",$lpos1[0],$lpos1[1],$lpos2[0],$lpos2[1])
				  Sleep(1000 + Random(0,1000))
				  MouseClickDrag("left",$lpos2[0],($lpos2[1]+8),$lpos1[0],$lpos1[1])
				  $lumptimer = 0
				  sleep(1000 + Random(0,1000))
			   EndIf 
			   if ( $citem < $itemnumber ) then
				$citem = $citem +1
				else
				$citem = 1
				endif
				call("Improveitem", $citem)
			   $lumptimer = $lumptimer + 1
			   call("Minimize", false)
			   Call("BossCount")
			   sleep($Cycle_time + Random(0,1000))
			EndIf
		 Next
EndFunc



Func Improveitem ($a)

	Switch $a
		Case 1
				$ps1 = $ipos1[0]
				$ps2 = $ipos1[1]
		Case 2
				$ps1 = $ipos2[0]
				$ps2 = $ipos2[1]
		Case 3
				$ps1 = $ipos3[0]
				$ps2 = $ipos3[1]
		Case 4
				$ps1 = $ipos4[0]
				$ps2 = $ipos4[1]
		Case 5
				$ps1 = $ipos5[0]
				$ps2 = $ipos5[1]
		Case 6
				$ps1 = $ipos6[0]
				$ps2 = $ipos6[1]
	Endswitch
	MouseMove($ps1,$ps2)
			   ControlSend($state2, "", "", "2")
			   sleep(100)
			   ControlSend($state2, "", "", "o")
			   sleep(100)
			   ControlSend($state2, "", "", "1")
			   sleep(100)
			   ControlSend($state2, "", "", "p")
			   sleep(100)
			   ControlSend($state2, "", "", "1")
			   sleep(100)
			   ControlSend($state2, "", "", "k")
			   sleep(100)
			   ControlSend($state2, "", "", "1")
			   sleep(100)
			   ControlSend($state2, "", "", "l")
			   sleep(100)
			   ControlSend($state2, "", "", "1")
			   sleep(100)
			   ControlSend($state2, "", "", "m")
			   sleep(100)
			   ControlSend($state2, "", "", "1")
			   sleep(100)
			   ControlSend($state2, "", "", "j")
			   sleep(100)
			   ControlSend($state2, "", "", "1")
			   sleep(100)
EndFunc

Func ImproveSetLump()
	  if $lump then
	  $lump=false
	  	  MsgBox(0, "", "Lump Deactivated")
	  else
	  $lump=true
	  MsgBox(0, "", "Lump Activated, Make sure to set them by reclicking Set Items")
	  endif
EndFunc

Func ImproveSetItems()
	MsgBox(0, "", "Click on your six items to improve")
	Local $trying=1
	While(Not($trying==10))
	if _IsPressed("01") And $trying==1 Then
              $ipos1 = MouseGetPos()
              $trying=2
              call("SelectedBeep")
       EndIf
	  	if _IsPressed("01") And $trying==2 Then
              $ipos2 = MouseGetPos()
              $trying=3
              call("SelectedBeep")
       EndIf
	   	if _IsPressed("01") And $trying==3 Then
              $ipos3 = MouseGetPos()
              $trying=4
              call("SelectedBeep")
       EndIf
	   	if _IsPressed("01") And $trying==4 Then
              $ipos4 = MouseGetPos()
              $trying=5
              call("SelectedBeep")
       EndIf
	   	if _IsPressed("01") And $trying==5 Then
              $ipos5 = MouseGetPos()
              $trying=6
              call("SelectedBeep")
       EndIf
	   	if _IsPressed("01") And $trying==6 Then
              $ipos6 = MouseGetPos()
              $trying=7
              call("SelectedBeep")
       EndIf
	   if $trying==7 And $lump Then
	   $trying=8
	   MsgBox(0, "", "Click on the lump in the forge and then the lump in your inventory")
	   Endif
	   if $trying==7 And Not($lump) Then
	   $trying=10
	   Endif
	   	if _IsPressed("01") And $trying==8 Then
              $lpos1 = MouseGetPos()
              $trying=9
              call("SelectedBeep")
       EndIf
	   	   	if _IsPressed("01") And $trying==9 Then
              $lpos2 = MouseGetPos()
              $trying=10
              call("SelectedBeep")
       EndIf
	WEnd
EndFunc
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
			   ControlSend($state2, "", "", "2")
			   sleep(100)
EndFunc
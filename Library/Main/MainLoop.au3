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
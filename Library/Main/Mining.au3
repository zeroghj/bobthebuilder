Func Mining()
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
EndFunc
Func Digging()
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
			call("Minimize", true)
			Send("1")
			Call("BossCount")
			call("Minimize", false)
			sleep($Cycle_time + Random(0,1000))
		EndIf
	Next
EndFunc
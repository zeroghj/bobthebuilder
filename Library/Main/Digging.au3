Func Digging()
	For $i =0 to 5
		if($looping) Then
			call("Minimize", true)
			Send("{NUMPAD3}")
			Call("BossCount")
			call("Minimize", false)
			sleep($Cycle_time + Random(0,1000))
		EndIf
	Next
EndFunc

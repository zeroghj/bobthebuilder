Func Tracking()
	For $i =0 to 5
		if($looping) Then
			call("Minimize", true)
			Send("{NUMPAD6}")
			call("Minimize", false)
			Call("BossCount")
			sleep($Cycle_time + Random(0,1000))
		EndIf
	Next
Endfunc

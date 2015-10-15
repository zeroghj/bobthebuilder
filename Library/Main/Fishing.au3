Func Fishing()
	For $i =0 to 5
		if($looping) Then
			call("Minimize", true)
			Send("{NUMPAD4}")
			Call("BossCount")
			call("Minimize", false)
			sleep(Random(0,20000))
		EndIf
	Next
Endfunc

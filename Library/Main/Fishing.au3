Func Fishing()	
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
Endfunc
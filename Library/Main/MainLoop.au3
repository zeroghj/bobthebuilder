Func Looptime()
   while($looping)
		sleep(5000+Random(0,1000))
		call("Walking")
		if ($looping) Then
			call("getwater")
		Endif
		Switch $Option
		Case 1
			call("Mining")
		Case 2
			call("Fishing")
		Case 3
			call("Tracking")
		Case 4
			Call("Creation")
		Case 5
			Call("Digging")
		Case 6
			Call("Improve")
	  Endswitch
   WEnd
Endfunc

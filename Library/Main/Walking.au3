Func Walking()	
	if ($walk AND $looping) Then
		 call("Minimize", true)
		 Send("{w down}")
		 sleep(1000+Random(0,500))
		 Send("{w up}")
		 call("Minimize", false)
	  EndIf
EndFunc
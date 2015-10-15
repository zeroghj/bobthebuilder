Func Creation()
If ($looping) Then
   sleep(100  + Random(0,1000))
   $iterate=0
   call("Minimize", true)
	MouseClickDrag("left",$cpos1[0],$cpos1[1],$cpos2[0],$cpos2[1])
   sleep(1000  + Random(0,1000))
   Send($CreationCount)
   Send("{Enter}")
   Endif
   call("Minimize", false)
   sleep(1000  + Random(0,1000))
   While ($iterate <$iteration)
   If ($looping) Then
		call("Minimize",true)
	  sleep(100 + Random(0,1000))
	  MouseMove($cpos2[0],$cpos2[1])
	  sleep(1000 + Random(0,1000))
	  MouseClick("right")
	  sleep(1000 + Random(0,1000))
	  $line = GetLine()
        If IsArray($line) Then
	  MouseMove($line[0]+52,$line[1])
	  Sleep(1000 + Random(0,1000))
	  MouseMove($Line[0]+52,$cpos3[1])
	  Sleep(1000 + Random(0,1000))
	  MouseMove($cpos3[0],$cpos3[1])
	  Sleep(500 + Random(0,250))
	  MouseMove($cpos3[0],$cpos4[1])
	  Sleep(500 + Random(0,250))
	  MouseMove($cpos4[0],$cpos4[1])
	  Sleep(500 + Random(0,250))
	  MouseClick("left")
       EndIf
	  call("Minimize",false)
	  Sleep($Cycle_Time  + Random(0,3000))
	  $iterate= $iterate+1
	  Endif
   Wend
   if ($looping) then
	  sleep(100  + Random(0,1000))
	  call("Minimize", true)
   MouseMove($cpos2[0],$cpos2[1])
   MouseClick("left")
   Sleep(500 + Random(0,250))
   For $i=1 to $finalitembulk
   MouseMove(MouseGetPos(0),MouseGetPos(1)+12)
   Sleep(500 + Random(0,250))
   Send("{LShift down}")
   Sleep(500 + Random(0,250))
   MouseClick("left")
   Sleep(500 + Random(0,250))
   Send("{LShift up}")
   Next
   MouseClickDrag("left",$cpos5[0],($cpos5[1]),$cpos2[0],$cpos2[1])
   Sleep(500 + Random(0,250))
   call("Minimize", false)
   endif
EndFunc

Func CreationSet()
	MsgBox(0, "", "We will now set the values for Creation. Click where we will pick up our items from")
	Local $trying=1
	While(Not($trying==6))
	if _IsPressed("01") And $trying==1 Then
              $cpos1 = MouseGetPos()
              $trying=2
			  MsgBox(0, "", "Now Click Where you will drop the item in your inventory")
       EndIf
	   	if _IsPressed("01") And $trying==2 Then
              $cpos2 = MouseGetPos()
              $trying=3
              MsgBox(0, "", "Now Click on the first open menu in create")
       EndIf
	   	   	if _IsPressed("01") And $trying==3 Then
              $cpos3 = MouseGetPos()
              $trying=4
              MsgBox(0, "", "Now Click on what you want to make")
       EndIf
	   	   	if _IsPressed("01") And $trying==4 Then
              $cpos4 = MouseGetPos()
              $trying=5
              MsgBox(0, "", "Now Click Where you want to drop the results")
       EndIf
	   	if _IsPressed("01") And $trying==5 Then
              $cpos5 = MouseGetPos()
              $trying=6
              MsgBox(0, "", "You are ready to go")
       EndIf
	WEnd
EndFunc

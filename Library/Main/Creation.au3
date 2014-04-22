Func Creation()
If ($looping) Then
   sleep(100  + Random(0,1000))
   $iterate=0
   call("Minimize, true")
MouseClickDrag("left",$posx1,$posy1,$posx6,$posy6)
   sleep(1000  + Random(0,1000))
   Send($CreationCount)
   Send("{Enter}")
   Endif
   call("Minimize, false")
   sleep(1000  + Random(0,1000))
   While ($iterate <$iteration)
   If ($looping) Then
		call("Minimize, true")
	  BlockInput(1)
	  sleep(100  + Random(0,1000))
	  MouseMove($posx6,$posy6)
	  sleep(1000  + Random(0,1000))
	  MouseClick("right")
	  sleep(1000  + Random(0,1000))
	  MouseMove($posx3,$posy3)
	  Sleep(1000  + Random(0,1000))
	  MouseMove($posx4,$posy3)
	  Sleep(1000  + Random(0,1000))
	  MouseMove($posx4,$posy4)
	  Sleep(500  + Random(0,250))
	  MouseMove($posx5,$posy4)
	  Sleep(500  + Random(0,250))
	  MouseMove($posx5,$posy5)
	  Sleep(500  + Random(0,250))
	  MouseClick("left")
	  BlockInput(0)
	  call("Minimize, false")
	  Sleep($Cycle_Time  + Random(0,3000))
	  $iterate= $iterate+1
	  Endif
   Wend
   if ($looping) then
	  sleep(100  + Random(0,1000))
	  call("Minimize, true")
   MouseMove($posx6,$posy6)
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
   MouseClickDrag("left",$posx6,($posy6),$posx2,$posy2)
   Sleep(500 + Random(0,250))
   Next
   call("Minimize, false")
   endif
EndFunc
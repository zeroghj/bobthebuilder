;function that will have the character drink water
Func getwater()
if $wateris then
 $loopcounter = $loopcounter + 1
 if ($loopcounter>20) then
 $loopcounter=0
 call("Minimize", true)
 MouseMove($wpos[0],$wpos[1])
 sleep(1000 + Random(0,1000))
 MouseClick("right")
 sleep(1000 + Random(0,1000))
 $line = GetLine()
        If IsArray($line) Then
		  Local $random2 = Random(200, 400, 1)
              MouseMove($line[0], $line[1]+70)
              Sleep($random2+61)
              MouseMove($line[0], $line[1]+70)
              Sleep($random2-33)
              MouseClick("left")
       EndIf
 call("Minimize", false)
 sleep(2000 + Random(0,1000))
 Endif
 Endif
EndFunc
;activate when water button is pressed
Func waterOn()
	$wateris=true
	MsgBox(0, "", "Click on your water source")
	Local $trying=1
	While($trying==1)
	if _IsPressed("01") And $trying==1 Then
              $wpos = MouseGetPos()
              $trying=2
              call("SelectedBeep")
       EndIf
	WEnd
EndFunc

Func waterOff()
	$wateris=false
EndFunc


Func getwater ()
 $loopcounter = $loopcounter + 1
 if ($loopcounter>20) then
 $loopcounter=0
 call("Minimize", true)
 BlockInput(1)
 MouseMove($wposx1,$wposy1)
 sleep(1000 + Random(0,1000))
 MouseClick("right")
 sleep(1000 + Random(0,1000))
 MouseMove($wposx2,$wposy2)
 sleep(1000 + Random(0,1000))
 MouseClick("left")
 BlockInput(0)
 call("Minimize", false)
 sleep(2000 + Random(0,1000))
 endif
EndFunc


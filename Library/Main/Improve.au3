Func Improveitem ($a)

	Switch $a
		Case 1
				$ps1 = $itemposx1
				$ps2 = $itemposy1
		Case 2
				$ps1 = $itemposx2
				$ps2 = $itemposy2
		Case 3
				$ps1 = $itemposx3
				$ps2 = $itemposy3
		Case 4
				$ps1 = $itemposx4
				$ps2 = $itemposy4
		Case 5
				$ps1 = $itemposx5
				$ps2 = $itemposy5
		Case 6
				$ps1 = $itemposx6
				$ps2 = $itemposy6
	Endswitch
	MouseMove($ps1,$ps2)
			   ControlSend($state2, "", "", "o")
			   sleep(100)
			   ControlSend($state2, "", "", "1")
			   sleep(100)
			   ControlSend($state2, "", "", "p")
			   sleep(100)
			   ControlSend($state2, "", "", "1")
			   sleep(100)
			   ControlSend($state2, "", "", "k")
			   sleep(100)
			   ControlSend($state2, "", "", "1")
			   sleep(100)
			   ControlSend($state2, "", "", "l")
			   sleep(100)
			   ControlSend($state2, "", "", "1")
			   sleep(100)
			   ControlSend($state2, "", "", "m")
			   sleep(100)
			   ControlSend($state2, "", "", "1")
			   sleep(100)
			   ControlSend($state2, "", "", "j")
			   sleep(100)
			   ControlSend($state2, "", "", "1")
			   sleep(100)
			   ControlSend($state2, "", "", "2")
			   sleep(100)
EndFunc
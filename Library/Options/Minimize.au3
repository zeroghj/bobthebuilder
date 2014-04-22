Func Minimize($a)
if ($a) then
	call("Beeping")
	BlockInput(1)
	if ($Minimize) then
		$state = WinGetState($state2, "")
		WinActivate($state2, "")
		WinWaitActive($state2)
	EndIf
Endif
		If (($Minimize)AND(NOT($a))AND(NOT($state = 8))) Then
		WinSetState($state2, "", @SW_MINIMIZE)
		EndIf
		BlockInput(0)
EndFunc


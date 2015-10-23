Func Beeping()
if ($Beep) then
;Beep(500,500) (NOTE) Jay: possibly not working with windows 10
Opt("ExpandEnvStrings", 1)
$sSnd = RegRead("HKCU\AppEvents\Schemes\Apps\.Default\.Default\.Current", "")
SoundPlay($sSnd)
Endif
EndFunc

Func SelectedBeep()
Beep(1000,500)
EndFunc

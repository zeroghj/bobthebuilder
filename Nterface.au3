;Version 2.1.2
#include <Misc.au3>
;Global Variables
#include "Library\Globals.au3"
;MainLoop and Subfunctions
#include "Library\Main\Save.au3"
#include "Library\Main\Keybinding.au3"
#include "Library\Main\MainLoop.au3"
#include "Library\Main\water.au3"
#include "Library\Main\Walking.au3"
#include "Library\Main\Mining.au3"
#include "Library\Main\Fishing.au3"
#include "Library\Main\Tracking.au3"
#include "Library\Main\Digging.au3"
#include "Library\Main\Improve.au3"
#include "Library\Main\Creation.au3"
;Bin
#include "Library\Bin\MenuHandle.au3"
;Short Functions
#include "Library\shortfunctions.au3"
;Option Functions
#include "Library\Options\Beeping.au3"
#include "Library\Options\Counting.au3"
#include "Library\Options\Minimize.au3"
;GUI part of code
#include <ButtonConstants.au3>
#include <ComboConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <TabConstants.au3>
#include <WindowsConstants.au3>
#include <File.au3>
;GUI form
#include "Library\GUI\form.au3"
;OnEvent Programing
#include "Library\GUI\onEvent.au3"

Call("VerifySaveFiles")

While 1
Call("Looptime")
WEnd

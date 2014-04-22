;Version 1.07d
; Menu
; 1.0 BackEnd
   ; 1.1 Variables
   ; 1.2 Short Functions
   ; 1.3 Main Functions
	  ; 1.3.1 MainLoop Function
	  ; 1.3.2 Creation function
	  ; 1.3.3 Improvement Function
; 2.0 GUI
   ;2.1 GUI form
   ;2.2 OnEvent Programing
	  ;2.2.1 Tab 1 Main Menu
	  ;2.2.2 Tab 2 Creation
	  ;2.2.3 Tab 3 Improvement
   ;2.3 OnEvent Functions


; 1.0 BackEnd part of the code
; 1.1 Variables
#include "Library\Globals.au3"
; 1.2 Short Functions
#include "Library\water.au3"
#include "Library\shortfunctions.au3"
; 1.3 Main Function
; 1.3.1 MainLoop Function
#include "Library\Main\MainLoop.au3"
;1.3.2 Creation Function
#include "Library\Main\Creation.au3"
;1.3.3 Improvement Function
#include "Library\Main\Improve.au3"
;2.0 GUI part of code
#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <TabConstants.au3>
#include <WindowsConstants.au3>
;2.1 GUI form
#include "Library\GUI\form.au3"
;2.2 OnEvent Programing
#include "Library\GUI\onEvent.au3"
While 1
	  Call("Looptime")

WEnd



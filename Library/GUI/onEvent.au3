HotKeySet("^{h}","takeposition")
GUISetOnEvent($GUI_EVENT_CLOSE, "CLOSEClicked")
Opt("GUIOnEventMode", 1)  ; Change to OnEvent mode 
   ;2.2.1 Tab 1 Main Menu
GUICtrlSetOnEvent($RadioMining, "Mine1")
GUICtrlSetOnEvent($RadioFishing, "Fish2")
GUICtrlSetOnEvent($RadioTracking, "Track3")
GUICtrlSetOnEvent($RadDigging5, "Digging5")
GUICtrlSetOnEvent($RadCreation4, "Creation4")
GUICtrlSetOnEvent($RadImprovement6, "Improvement6")
GUICtrlSetOnEvent($RadioAutoWalkOnPointclick, "Walkon")
GUICtrlSetOnEvent($Radioauto_walkoffpointclick, "Walkoff")
GUICtrlSetOnEvent($InpCycletime, "cyclez")
GUICtrlSetOnEvent($BtnStartpointclick, "son")
GUICtrlSetOnEvent($Btnstoppointclick, "soff")
GUICtrlSetOnEvent($RadTimeLimit, "ltime")
GUICtrlSetOnEvent($RadCyclelimit, "lcount")
GUICtrlSetOnEvent($Cycleinput, "lset")
GUICtrlSetOnEvent($BtnWaterlocation, "water1")
GUICtrlSetOnEvent($BtnDrink, "water2")
GUICtrlSetOnEvent($RadBeepoff, "beepoff")
GUICtrlSetOnEvent($RadBeepon, "beepon")
GUICtrlSetOnEvent($RadMinimizeoff, "minoff")
GUICtrlSetOnEvent($RadMinimizeOn, "minon")
   ;2.2.2 Tab 2 Creation
GUICtrlSetOnEvent($Btninitialbulk, "InitialBulk")
GUICtrlSetOnEvent($Btninventoryloc, "Inventory")
GUICtrlSetOnEvent($BtnMenu1, "Menu1")
GUICtrlSetOnEvent($BtnMenu2, "Menu2")
GUICtrlSetOnEvent($BtnMenu3, "Menu3")
GUICtrlSetOnEvent($Btnfinalbulk, "FinalBulk")
GUICtrlSetOnEvent($InputIteration, "SetIteration")
GUICtrlSetOnEvent($RadBBNo, "BBNO")
GUICtrlSetOnEvent($RadBBYes, "BBYES")
GUICtrlSetOnEvent($InpBBPick, "Action")
GUICtrlSetOnEvent($InpBBDrop, "SetFinalItemBulk")
   ;2.2.3 Tab 3 Improvement
GUICtrlSetOnEvent($BtnInventoryimprovementlump, "SetInventorylump")
GUICtrlSetOnEvent($BtnNewLump, "SetForgelump")
GUICtrlSetOnEvent($Btnitem1, "Setitem1")
GUICtrlSetOnEvent($Btnitem2, "Setitem2")
GUICtrlSetOnEvent($Btnitem3, "Setitem3")
GUICtrlSetOnEvent($Btnitem4, "Setitem4")
GUICtrlSetOnEvent($Btnitem5, "Setitem5")
GUICtrlSetOnEvent($Btnitem6, "Setitem6")
Func CLOSEClicked()
   Exit
EndFunc
   ;(kinda) Tab1
Func Mine1()
	  Call("setOption", 1)
	  Call("ena")
EndFunc
Func Fish2()
	  Call("setOption", 2)
	  Call("ena")
EndFunc
Func Track3()
	  Call("setOption", 3)
	  Call("ena")
   EndFunc
      Func Creation4()
	  Call("setOption", 4)
	  Call("dis")
   EndFunc
   Func Digging5()
	  Call("setOption", 5)
	  Call("ena")
   EndFunc
      Func Improvement6()
	  Call("setOption", 6)
	  Call("dis")
   EndFunc
Func Walkon()
	  Call("WalkSet", true)
EndFunc
Func Walkoff()
	  Call("WalkSet", false)
EndFunc
Func cyclez()
	  call("setCycle",GUICTrlRead($InpCycletime))
EndFunc
Func son()
	  call("lset")
	  call("setOn")
EndFunc
Func soff()
	  call("setOff")
EndFunc
Func ltime()
	  $Counting=false
EndFunc
Func lcount()
	  $Counting=true
   EndFunc
Func lset()
	  Call("setLimit",GUICTrlRead($Cycleinput))
   EndFunc
Func InitialBulk()
	  Call("positionset1");
   EndFunc
Func FinalBulk()
	  Call("positionset2");
EndFunc
Func Menu1()
	  Call("positionset3");
EndFunc
Func Menu2()
	  Call("positionset4");
EndFunc
Func Menu3()
	  Call("positionset5");
   EndFunc
Func Inventory()
	  Call("positionset6");
EndFunc
Func water1()
	  Call("positionsetwater1");
EndFunc
Func water2()
	  Call("positionsetwater2");
EndFunc
Func SetInventorylump()
	  Call("positionsetlump1");
EndFunc
Func SetForgelump()
	  Call("positionsetlump2");
EndFunc
Func Setitem1()
	  Call("positionsetitem1");
	  Call("setitemnumber",1);
EndFunc
Func Setitem2()
	  Call("positionsetitem2");
	  Call("setitemnumber",2);
EndFunc
Func Setitem3()
	  Call("positionsetitem3");
	  Call("setitemnumber",3);
EndFunc
Func Setitem4()
	  Call("positionsetitem4");
	  Call("setitemnumber",4);
EndFunc
Func Setitem5()
	  Call("positionsetitem5");
	  Call("setitemnumber",5);
EndFunc
Func Setitem6()
	  Call("positionsetitem6");
	  Call("setitemnumber",6);
EndFunc
Func BBNO()
	  Call("setBB", false);
EndFunc
Func BBYES()
	  Call("setBB", true);
EndFunc
Func minoff()
	  Call("setminimize", false);
EndFunc
Func minon()
	  Call("setminimize", true);
EndFunc
Func beepoff()
	  Call("setbeep", false);
EndFunc
Func beepon()
	  Call("setbeep", true);
EndFunc
Func Action()
	  Call("setcreationcount",GUICTrlRead($InpBBPick))
   EndFunc
   Func setiteration()
	  Call("SetIterationcount",GUICTrlRead($InputIteration))
   EndFunc
      Func setfinalitembulk()
	  Call("Finalitembulk",GUICTrlRead($InpBBDrop))
EndFunc
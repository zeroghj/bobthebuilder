Func Comparefiles()
   ; Ouverture du fichier et lecture du path
 Local $opensave = FileOpen(@ScriptDir & "\save\hotkeypath.txt")
 If $opensave = -1 Then
       MsgBox(1+262144,"", "An error occurred when reading the file.")
       Return False
   EndIf
 Local $keybindspath = FileReadLine($opensave, 1)

 ; Ouverture du fichier et creation du handle pour le lire
    $keybindopen = FileOpen($keybindspath, 1)
   If $keybindopen = -1 Then
       MsgBox(1+262144,"", "An error occurred when reading the file.")
       Return False
   EndIf

   FileSetPos($keybindopen,0,0)
   ; Lecture du fichier, on peut mettre n'importe quelle ligne ou plusieurs lignes
   $sFileRead = FileReadLine($keybindopen, 1)

 ; On compare les lignes apres la lecture avec le texte qui devrait etre la
 If $sFileRead == "bind NUMPAD1 IMPROVE" Then

    $binded=true
    $hadtorebind=false

    else

    ;FileWriteLine($keybindopen,"bind NUMPAD1 IMPROVE" & @CRLF)
    ;FileWriteLine($keybindopen,"bind NUMPAD2 REPAIR" & @CRLF)
    ;FileWriteLine($keybindopen,"bind NUMPAD3 dig" & @CRLF)
    ;FileWriteLine($keybindopen,"bind NUMPAD4 fish" & @CRLF)
    ;FileWriteLine($keybindopen,"bind NUMPAD5 mine_forward" & @CRLF)
    ;FileWriteLine($keybindopen,"bind NUMPAD6 track" & @CRLF)
    ;FileWriteLine($keybindopen,"bind o ACTIVATE_TOOL1" & @CRLF)
    ;FileWriteLine($keybindopen,"bind p ACTIVATE_TOOL2" & @CRLF)
    ;FileWriteLine($keybindopen,"bind k ACTIVATE_TOOL3" & @CRLF)
    ;FileWriteLine($keybindopen,"bind l ACTIVATE_TOOL4" & @CRLF)
    ;FileWriteLine($keybindopen,"bind m ACTIVATE_TOOL5" & @CRLF)
    ;FileWriteLine($keybindopen,"bind j ACTIVATE_TOOL6")

    FileSetPos($keybindopen,0,0)
    FileWriteLine($keybindopen,"bind NUMPAD1 IMPROVE" & @CRLF & _
    "bind NUMPAD2 REPAIR" & @CRLF & "bind NUMPAD3 dig" & @CRLF & _
    "bind NUMPAD4 fish" & @CRLF & "bind NUMPAD5 mine_forward" & @CRLF & _
    "bind NUMPAD6 track" & @CRLF & "bind o ACTIVATE_TOOL1" & @CRLF & _
    "bind p ACTIVATE_TOOL2" & @CRLF & "bind k ACTIVATE_TOOL3" & @CRLF & _
    "bind l ACTIVATE_TOOL4" & @CRLF & "bind m ACTIVATE_TOOL5" & @CRLF & _
    "bind j ACTIVATE_TOOL6")

    $hadtorebind=true

    EndIf

   ; On ferme le fichier
   FileClose($keybindopen)

   If (($wurmisopen=true) AND ($hadtorebind=true)) then
    msgbox(0,"","Bob is done binding your keys, however your Wurm client was open," & _
    "you will need to restart the game to activate those keybinds. Please start Bob first next time to avoid that problem")
  EndIf
EndFunc

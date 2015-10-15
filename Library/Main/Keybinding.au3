Func Comparefiles()
   ; Ouverture du fichier et lecture du path
 Local $opensave = FileOpen(@ScriptDir & "\save\hotkeypath.txt")
 If $opensave = -1 Then
       MsgBox(1,"", "An error occurred when reading the file.")
       Return False
   EndIf
 Local $keybindspath = FileReadLine($opensave, 1)

 ; Ouverture du fichier et creation du handle pour le lire
    $keybindopen = FileOpen($keybindspath,1)
   If $keybindopen = -1 Then
       MsgBox(1,"", "An error occurred when reading the file.")
       Return False
   EndIf

   ; Lecture du fichier, on peut mettre n'importe quelle ligne ou plusieurs lignes
   Local $sFileRead = FileReadLine($keybindopen, 1)

 ; On compare les lignes apres la lecture avec le texte qui devrait etre la
 If $sFileRead = "bind 1 IMPROVE" Then

    $binded=true

    else

    FileWriteLine($keybindopen,"bind NUMPAD1 IMPROVE")
    FileWriteLine($keybindopen,"bind NUMPAD2 REPAIR" & @CRLF)
    FileWriteLine($keybindopen,"bind NUMPAD3 dig" & @CRLF)
    FileWriteLine($keybindopen,"bind NUMPAD4 fish" & @CRLF)
    FileWriteLine($keybindopen,"bind NUMPAD5 mine_forward" & @CRLF)
    FileWriteLine($keybindopen,"bind NUMPAD6 track" & @CRLF)
    FileWriteLine($keybindopen,"bind o ACTIVATE_TOOL1" & @CRLF)
    FileWriteLine($keybindopen,"bind p ACTIVATE_TOOL2" & @CRLF)
    FileWriteLine($keybindopen,"bind k ACTIVATE_TOOL3" & @CRLF)
    FileWriteLine($keybindopen,"bind l ACTIVATE_TOOL4" & @CRLF)
    FileWriteLine($keybindopen,"bind m ACTIVATE_TOOL5" & @CRLF)
    FileWriteLine($keybindopen,"bind j ACTIVATE_TOOL6" & @CRLF)

    EndIf


   ; On ferme le fichier
   FileClose($keybindopen)

EndFunc
